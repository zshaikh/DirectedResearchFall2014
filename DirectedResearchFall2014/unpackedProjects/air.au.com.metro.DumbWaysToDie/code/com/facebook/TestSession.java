package com.facebook;

import android.app.*;
import android.content.*;
import android.os.*;
import com.facebook.internal.*;
import android.util.*;
import android.text.*;
import org.json.*;
import com.facebook.model.*;
import java.util.*;

public class TestSession extends Session
{
    private static final String LOG_TAG = "FacebookSDK.TestSession";
    private static Map appTestAccounts;
    private static final long serialVersionUID = 1L;
    private static String testApplicationId;
    private static String testApplicationSecret;
    private final TestSession$Mode mode;
    private final List requestedPermissions;
    private final String sessionUniqueUserTag;
    private String testAccountId;
    private boolean wasAskedToExtendAccessToken;
    
    TestSession(final Activity activity, final List requestedPermissions, final TokenCachingStrategy tokenCachingStrategy, final String sessionUniqueUserTag, final TestSession$Mode mode) {
        super((Context)activity, TestSession.testApplicationId, tokenCachingStrategy);
        Validate.notNull(requestedPermissions, "permissions");
        Validate.notNullOrEmpty(TestSession.testApplicationId, "testApplicationId");
        Validate.notNullOrEmpty(TestSession.testApplicationSecret, "testApplicationSecret");
        this.sessionUniqueUserTag = sessionUniqueUserTag;
        this.mode = mode;
        this.requestedPermissions = requestedPermissions;
    }
    
    public static TestSession createSessionWithPrivateUser(final Activity activity, final List list) {
        return createTestSession(activity, list, TestSession$Mode.PRIVATE, null);
    }
    
    public static TestSession createSessionWithSharedUser(final Activity activity, final List list) {
        return createSessionWithSharedUser(activity, list, null);
    }
    
    public static TestSession createSessionWithSharedUser(final Activity activity, final List list, final String s) {
        return createTestSession(activity, list, TestSession$Mode.SHARED, s);
    }
    
    private TestSession$TestAccount createTestAccountAndFinishAuth() {
        final Bundle bundle = new Bundle();
        bundle.putString("installed", "true");
        bundle.putString("permissions", this.getPermissionsString());
        bundle.putString("access_token", getAppAccessToken());
        if (this.mode == TestSession$Mode.SHARED) {
            bundle.putString("name", String.format("Shared %s Testuser", this.getSharedTestAccountIdentifier()));
        }
        final Response executeAndWait = new Request(null, String.format("%s/accounts/test-users", TestSession.testApplicationId), bundle, HttpMethod.POST).executeAndWait();
        final FacebookRequestError error = executeAndWait.getError();
        final TestSession$TestAccount testSession$TestAccount = (TestSession$TestAccount)executeAndWait.getGraphObjectAs(TestSession$TestAccount.class);
        if (error != null) {
            this.finishAuthOrReauth(null, error.getException());
            return null;
        }
        assert testSession$TestAccount != null;
        if (this.mode == TestSession$Mode.SHARED) {
            testSession$TestAccount.setName(bundle.getString("name"));
            storeTestAccount(testSession$TestAccount);
        }
        this.finishAuthWithTestAccount(testSession$TestAccount);
        return testSession$TestAccount;
    }
    
    private static TestSession createTestSession(final Activity activity, final List list, final TestSession$Mode testSession$Mode, final String s) {
        synchronized (TestSession.class) {
            if (Utility.isNullOrEmpty(TestSession.testApplicationId) || Utility.isNullOrEmpty(TestSession.testApplicationSecret)) {
                throw new FacebookException("Must provide app ID and secret");
            }
        }
        List<String> list2;
        if (Utility.isNullOrEmpty(list)) {
            list2 = Arrays.asList("email", "publish_actions");
        }
        else {
            list2 = (List<String>)list;
        }
        // monitorexit(TestSession.class)
        return new TestSession(activity, list2, new TestSession$TestTokenCachingStrategy(null), s, testSession$Mode);
    }
    
    private void deleteTestAccount(final String s, final String s2) {
        final Bundle bundle = new Bundle();
        bundle.putString("access_token", s2);
        final Response executeAndWait = new Request(null, s, bundle, HttpMethod.DELETE).executeAndWait();
        final FacebookRequestError error = executeAndWait.getError();
        final GraphObject graphObject = executeAndWait.getGraphObject();
        if (error != null) {
            Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: %s", s, error.getException().toString()));
        }
        else if (graphObject.getProperty("FACEBOOK_NON_JSON_RESULT") == Boolean.valueOf(false)) {
            Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: unknown reason", s));
        }
    }
    
    private void findOrCreateSharedTestAccount() {
        final TestSession$TestAccount testAccountMatchingIdentifier = findTestAccountMatchingIdentifier(this.getSharedTestAccountIdentifier());
        if (testAccountMatchingIdentifier != null) {
            this.finishAuthWithTestAccount(testAccountMatchingIdentifier);
            return;
        }
        this.createTestAccountAndFinishAuth();
    }
    
    private static TestSession$TestAccount findTestAccountMatchingIdentifier(final String s) {
        synchronized (TestSession.class) {
            retrieveTestAccountsForAppIfNeeded();
            for (final TestSession$TestAccount testSession$TestAccount : TestSession.appTestAccounts.values()) {
                if (testSession$TestAccount.getName().contains(s)) {
                    return testSession$TestAccount;
                }
            }
            return null;
        }
    }
    
    private void finishAuthWithTestAccount(final TestSession$TestAccount testSession$TestAccount) {
        this.testAccountId = testSession$TestAccount.getId();
        this.finishAuthOrReauth(AccessToken.createFromString(testSession$TestAccount.getAccessToken(), this.requestedPermissions, AccessTokenSource.TEST_USER), null);
    }
    
    static final String getAppAccessToken() {
        return TestSession.testApplicationId + "|" + TestSession.testApplicationSecret;
    }
    
    private String getPermissionsString() {
        return TextUtils.join((CharSequence)",", (Iterable)this.requestedPermissions);
    }
    
    private String getSharedTestAccountIdentifier() {
        final long n = 0xFFFFFFFFL & this.getPermissionsString().hashCode();
        long n2;
        if (this.sessionUniqueUserTag != null) {
            n2 = (0xFFFFFFFFL & this.sessionUniqueUserTag.hashCode());
        }
        else {
            n2 = 0L;
        }
        return this.validNameStringFromInteger(n ^ n2);
    }
    
    public static String getTestApplicationId() {
        synchronized (TestSession.class) {
            return TestSession.testApplicationId;
        }
    }
    
    public static String getTestApplicationSecret() {
        synchronized (TestSession.class) {
            return TestSession.testApplicationSecret;
        }
    }
    
    private static void populateTestAccounts(final Collection collection, final Collection collection2) {
        synchronized (TestSession.class) {
            final Iterator<TestSession$TestAccount> iterator = collection.iterator();
            while (iterator.hasNext()) {
                storeTestAccount(iterator.next());
            }
        }
        for (final TestSession$UserAccount testSession$UserAccount : collection2) {
            final TestSession$TestAccount testSession$TestAccount = TestSession.appTestAccounts.get(testSession$UserAccount.getUid());
            if (testSession$TestAccount != null) {
                testSession$TestAccount.setName(testSession$UserAccount.getName());
            }
        }
    }
    // monitorexit(TestSession.class)
    
    private static void retrieveTestAccountsForAppIfNeeded() {
        while (true) {
            Response response2 = null;
            Label_0161: {
                final String format;
                final Bundle bundle;
                synchronized (TestSession.class) {
                    if (TestSession.appTestAccounts != null) {
                        return;
                    }
                    TestSession.appTestAccounts = new HashMap();
                    format = String.format("SELECT id,access_token FROM test_account WHERE app_id = %s", TestSession.testApplicationId);
                    bundle = new Bundle();
                    final JSONObject jsonObject = new JSONObject();
                    final JSONObject jsonObject3;
                    final JSONObject jsonObject2 = jsonObject3 = jsonObject;
                    final String s = "test_accounts";
                    final String s2 = format;
                    jsonObject3.put(s, (Object)s2);
                    final JSONObject jsonObject4 = jsonObject2;
                    final String s3 = "users";
                    final String s4 = "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)";
                    jsonObject4.put(s3, (Object)s4);
                    final Bundle bundle2 = bundle;
                    final String s5 = "q";
                    final JSONObject jsonObject5 = jsonObject2;
                    final String s6 = jsonObject5.toString();
                    bundle2.putString(s5, s6);
                    final Bundle bundle3 = bundle;
                    final String s7 = "access_token";
                    final String s8 = getAppAccessToken();
                    bundle3.putString(s7, s8);
                    final Session session = null;
                    final String s9 = "fql";
                    final Bundle bundle4 = bundle;
                    final HttpMethod httpMethod = null;
                    final Request request = new Request(session, s9, bundle4, httpMethod);
                    final Response response = request.executeAndWait();
                    final Response response3;
                    response2 = (response3 = response);
                    final FacebookRequestError facebookRequestError = response3.getError();
                    if (facebookRequestError != null) {
                        final Response response4 = response2;
                        final FacebookRequestError facebookRequestError2 = response4.getError();
                        throw facebookRequestError2.getException();
                    }
                    break Label_0161;
                }
                try {
                    final JSONObject jsonObject = new JSONObject();
                    final JSONObject jsonObject3;
                    final JSONObject jsonObject2 = jsonObject3 = jsonObject;
                    final String s = "test_accounts";
                    final String s2 = format;
                    jsonObject3.put(s, (Object)s2);
                    final JSONObject jsonObject4 = jsonObject2;
                    final String s3 = "users";
                    final String s4 = "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)";
                    jsonObject4.put(s3, (Object)s4);
                    final Bundle bundle2 = bundle;
                    final String s5 = "q";
                    final JSONObject jsonObject5 = jsonObject2;
                    final String s6 = jsonObject5.toString();
                    bundle2.putString(s5, s6);
                    final Bundle bundle3 = bundle;
                    final String s7 = "access_token";
                    final String s8 = getAppAccessToken();
                    bundle3.putString(s7, s8);
                    final Session session = null;
                    final String s9 = "fql";
                    final Bundle bundle4 = bundle;
                    final HttpMethod httpMethod = null;
                    final Request request = new Request(session, s9, bundle4, httpMethod);
                    final Response response = request.executeAndWait();
                    final Response response3;
                    response2 = (response3 = response);
                    final FacebookRequestError facebookRequestError = response3.getError();
                    if (facebookRequestError != null) {
                        final Response response4 = response2;
                        final FacebookRequestError facebookRequestError2 = response4.getError();
                        throw facebookRequestError2.getException();
                    }
                }
                catch (JSONException ex2) {
                    throw new FacebookException((Throwable)ex2);
                }
            }
            final GraphObjectList data = ((TestSession$FqlResponse)response2.getGraphObjectAs(TestSession$FqlResponse.class)).getData();
            if (data == null || data.size() != 2) {
                break;
            }
            populateTestAccounts(data.get(0).getFqlResultSet().castToListOf(TestSession$TestAccount.class), data.get(1).getFqlResultSet().castToListOf(TestSession$UserAccount.class));
            return;
        }
        throw new FacebookException("Unexpected number of results from FQL query");
    }
    
    public static void setTestApplicationId(final String s) {
        synchronized (TestSession.class) {
            if (TestSession.testApplicationId != null && !TestSession.testApplicationId.equals(s)) {
                throw new FacebookException("Can't have more than one test application ID");
            }
        }
        TestSession.testApplicationId = s;
    }
    // monitorexit(TestSession.class)
    
    public static void setTestApplicationSecret(final String s) {
        synchronized (TestSession.class) {
            if (TestSession.testApplicationSecret != null && !TestSession.testApplicationSecret.equals(s)) {
                throw new FacebookException("Can't have more than one test application secret");
            }
        }
        TestSession.testApplicationSecret = s;
    }
    // monitorexit(TestSession.class)
    
    private static void storeTestAccount(final TestSession$TestAccount testSession$TestAccount) {
        synchronized (TestSession.class) {
            TestSession.appTestAccounts.put(testSession$TestAccount.getId(), testSession$TestAccount);
        }
    }
    
    private String validNameStringFromInteger(final long i) {
        int j = 0;
        final String string = Long.toString(i);
        final StringBuilder sb = new StringBuilder("Perm");
        final char[] charArray = string.toCharArray();
        final int length = charArray.length;
        char c = '\0';
        while (j < length) {
            final char c2 = charArray[j];
            if (c2 == c) {
                c = (char)(c2 + '\n');
            }
            else {
                c = c2;
            }
            sb.append((char)(c + 'a' - '0'));
            ++j;
        }
        return sb.toString();
    }
    
    @Override
    void authorize(final Session$AuthorizationRequest session$AuthorizationRequest) {
        if (this.mode == TestSession$Mode.PRIVATE) {
            this.createTestAccountAndFinishAuth();
            return;
        }
        this.findOrCreateSharedTestAccount();
    }
    
    @Override
    void extendAccessToken() {
        this.wasAskedToExtendAccessToken = true;
        super.extendAccessToken();
    }
    
    void fakeTokenRefreshAttempt() {
        this.setCurrentTokenRefreshRequest(new Session$TokenRefreshRequest(this));
    }
    
    void forceExtendAccessToken(final boolean b) {
        final AccessToken tokenInfo = this.getTokenInfo();
        this.setTokenInfo(new AccessToken(tokenInfo.getToken(), new Date(), tokenInfo.getPermissions(), AccessTokenSource.TEST_USER, new Date(0L)));
        this.setLastAttemptedTokenExtendDate(new Date(0L));
    }
    
    public final String getTestUserId() {
        return this.testAccountId;
    }
    
    boolean getWasAskedToExtendAccessToken() {
        return this.wasAskedToExtendAccessToken;
    }
    
    @Override
    void postStateChange(final SessionState sessionState, final SessionState sessionState2, final Exception ex) {
        final String testAccountId = this.testAccountId;
        super.postStateChange(sessionState, sessionState2, ex);
        if (sessionState2.isClosed() && testAccountId != null && this.mode == TestSession$Mode.PRIVATE) {
            this.deleteTestAccount(testAccountId, getAppAccessToken());
        }
    }
    
    @Override
    boolean shouldExtendAccessToken() {
        final boolean shouldExtendAccessToken = super.shouldExtendAccessToken();
        this.wasAskedToExtendAccessToken = false;
        return shouldExtendAccessToken;
    }
    
    @Override
    public final String toString() {
        return "{TestSession testUserId:" + this.testAccountId + " " + super.toString() + "}";
    }
}
