.class public Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;
.super Ljava/lang/Object;
.source "GamesysContentServerInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static lastQueryServerFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private static lastQueryServerTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

.field protected static lastReceiptCheckFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field protected static lastReceiptCheckTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

.field static mAsyncInProgress:Z

.field static mAsyncOperation:Ljava/lang/String;

.field protected static testingContext:Lcom/gamesys/android/common/tools/fwk/INativeContext;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    const-class v0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->TAG:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->mAsyncInProgress:Z

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->mAsyncOperation:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    .line 49
    sput-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerFuture:Ljava/util/concurrent/Future;

    .line 52
    sput-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastReceiptCheckTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    .line 55
    sput-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastReceiptCheckFuture:Ljava/util/concurrent/Future;

    .line 57
    sput-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->testingContext:Lcom/gamesys/android/common/tools/fwk/INativeContext;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatItemDetailFromStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lorg/json/JSONObject;
    .locals 7
    .param p0, "sku"    # Ljava/lang/String;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "priceMicros"    # J
    .param p6, "priceCurrencyCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v4, 0x0

    .line 145
    move-object v2, p1

    .line 146
    .local v2, "priceNoCurrency":Ljava/lang/String;
    const/4 v1, 0x0

    .line 147
    .local v1, "currencySymbol":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v3, v6, :cond_1

    .line 148
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 149
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 152
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v5, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v3, v6, :cond_3

    .line 153
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 157
    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v0, "content":Lorg/json/JSONObject;
    const-string v3, "price"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v3, "title"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v3, "description"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v3, "sku"

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v3, "currencySymbol"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    const-wide/16 v3, 0x0

    cmp-long v3, p4, v3

    if-lez v3, :cond_4

    .line 165
    const-string v3, "priceAmountMicros"

    invoke-virtual {v0, v3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 167
    :cond_4
    if-eqz p6, :cond_5

    .line 168
    const-string v3, "priceCurrencyCode"

    invoke-virtual {v0, v3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    :cond_5
    return-object v0
.end method

.method protected static getFormattedGoogleAccounts(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 182
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 183
    .local v2, "accounts":[Landroid/accounts/Account;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 190
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 192
    .local v0, "a":Lorg/json/JSONArray;
    return-object v0

    .line 183
    .end local v0    # "a":Lorg/json/JSONArray;
    :cond_0
    aget-object v1, v2, v6

    .line 184
    .local v1, "account":Landroid/accounts/Account;
    iget-object v8, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 185
    iget-object v5, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 186
    .local v5, "possibleEmail":Ljava/lang/String;
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    .end local v5    # "possibleEmail":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method public static queryInventory(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5
    .param p0, "endPoint"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/json/JSONObject;

    .prologue
    .line 122
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/gamesys/android/billing/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "b64JSON":Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 124
    .local v1, "getParams":Landroid/os/Bundle;
    const-string v4, "payload"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v3, Lcom/gamesys/android/billing/common/fwk/ClientUri;

    const/4 v4, 0x1

    invoke-direct {v3, v1, p0, v4}, Lcom/gamesys/android/billing/common/fwk/ClientUri;-><init>(Landroid/os/Bundle;Ljava/lang/String;Z)V

    .line 126
    .local v3, "uri":Lcom/gamesys/android/billing/common/fwk/ClientUri;
    invoke-static {v3}, Lcom/gamesys/android/billing/common/fwk/GamesysHttpRequest;->performRequest(Lcom/gamesys/android/billing/common/fwk/ClientUri;)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, "res":Ljava/lang/Object;
    return-object v2
.end method

.method public static queryInventoryAsync(Ljava/lang/String;Lorg/json/JSONObject;Landroid/app/Activity;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V
    .locals 4
    .param p0, "endPoint"    # Ljava/lang/String;
    .param p1, "params"    # Lorg/json/JSONObject;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "listener"    # Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;

    .prologue
    const/4 v2, 0x1

    .line 74
    sget-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    invoke-virtual {v1, v2}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;->cancel(Z)Z

    .line 78
    :cond_0
    sget-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerFuture:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_1

    .line 79
    sget-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerFuture:Ljava/util/concurrent/Future;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 82
    :cond_1
    new-instance v0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;

    invoke-direct {v0, p1, p0, p3}, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface$1;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/IServerAsyncListener;)V

    .line 111
    .local v0, "task":Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;
    new-instance v1, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    const/4 v2, 0x3

    sget-object v3, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->TAG:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p0, v0}, Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/gamesys/android/billing/common/fwk/multithread/ICallableForAutoRetry;)V

    sput-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    .line 112
    sget-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerTask:Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;

    invoke-static {v1}, Lcom/gamesys/android/billing/common/ane/AbstractBillingExtension;->submitWorker(Lcom/gamesys/android/billing/common/fwk/multithread/FutureTaskAutoRetry;)Ljava/util/concurrent/Future;

    move-result-object v1

    sput-object v1, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->lastQueryServerFuture:Ljava/util/concurrent/Future;

    .line 113
    return-void
.end method

.method public static setTestingContext(Lcom/gamesys/android/common/tools/fwk/INativeContext;)V
    .locals 0
    .param p0, "context"    # Lcom/gamesys/android/common/tools/fwk/INativeContext;

    .prologue
    .line 60
    sput-object p0, Lcom/gamesys/android/billing/common/fwk/GamesysContentServerInterface;->testingContext:Lcom/gamesys/android/common/tools/fwk/INativeContext;

    .line 61
    return-void
.end method
