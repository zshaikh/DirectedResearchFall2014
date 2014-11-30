.class public Lcom/gamesys/android/common/tools/ToolsBox;
.super Ljava/lang/Object;
.source "ToolsBox.java"


# static fields
.field public static final AMAZON_APP_STORE:Ljava/lang/String; = "AMAZON_APP_STORE"

.field public static final GOOGLE_PLAY_STORE:Ljava/lang/String; = "GOOGLE_PLAY_STORE"

.field public static final INSTALLER_ANDROID_AMAZON:Ljava/lang/String; = "com.amazon.venezia"

.field public static final INSTALLER_ANDROID_GOOGLE_PLAY:Ljava/lang/String; = "com.android.vending"

.field public static final RATING_APP_URI_AMAZONE:Ljava/lang/String; = "http://www.amazon.com/gp/mas/dl/android?p="

.field public static final RATING_APP_URI_GOOGLE:Ljava/lang/String; = "http://market.android.com/details?id="

.field public static final UNKNOWN_STORE:Ljava/lang/String; = "PLATFORM_UNKOWN"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStoreUri(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "storeName"    # Ljava/lang/String;

    .prologue
    .line 168
    move-object v1, p1

    .line 169
    .local v1, "installerName":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v3, "PLATFORM_UNKOWN"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 170
    :cond_0
    invoke-static {p0}, Lcom/gamesys/android/common/tools/ToolsBox;->getInstallerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 172
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "appPkg":Ljava/lang/String;
    const/4 v2, 0x0

    .line 175
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "AMAZON_APP_STORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 183
    :goto_0
    return-object v2

    .line 177
    :cond_2
    const-string v3, "GOOGLE_PLAY_STORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "http://market.android.com/details?id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 179
    goto :goto_0

    .line 180
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getBase64PackageHash(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 97
    const-string v3, "Unknown Error"

    .line 99
    .local v3, "sig":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v7, 0x40

    invoke-virtual {v6, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 100
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v6, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    :goto_0
    if-lt v5, v7, :cond_0

    .line 115
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_1
    return-object v3

    .line 100
    .restart local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_0
    aget-object v4, v6, v5

    .line 101
    .local v4, "signature":Landroid/content/pm/Signature;
    const-string v8, "SHA"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 102
    .local v2, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 103
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 104
    const-string v8, "KeyHash:"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "{"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "} is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "md":Ljava/security/MessageDigest;
    .end local v4    # "signature":Landroid/content/pm/Signature;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "KeyHash:"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "} NOT FOUND"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "{"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "} NOT FOUND"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 110
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 111
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "KeyHash:"

    const-string v6, "NoSuchAlgorithmException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    const-string v3, "NoSuchAlgorithmException"

    goto :goto_1
.end method

.method private static getCurrentApplication()Landroid/app/Application;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 210
    :try_start_0
    const-string v2, "android.app.ActivityThread"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 211
    .local v0, "activityThreadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "currentApplication"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 212
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 221
    :catch_0
    move-exception v2

    :goto_1
    move-object v2, v3

    .line 224
    goto :goto_0

    .line 219
    :catch_1
    move-exception v2

    goto :goto_1

    .line 217
    :catch_2
    move-exception v2

    goto :goto_1

    .line 215
    :catch_3
    move-exception v2

    goto :goto_1

    .line 213
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static getInstallerName(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "appPkg":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    .local v2, "installer":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "installer "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v2, :cond_0

    const-string v8, "com.amazon.venezia"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 133
    const-string v8, "store  AMAZON_APP_STORE"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v8, "AMAZON_APP_STORE"

    .line 158
    :goto_0
    return-object v8

    .line 135
    :cond_0
    if-eqz v2, :cond_1

    const-string v8, "com.android.vending"

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 136
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "http://market.android.com/details?id="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 137
    .local v7, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-direct {v4, v8, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 139
    .local v4, "rateAppIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 140
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 141
    .local v6, "size":I
    if-nez v6, :cond_2

    .line 143
    const-string v8, "activities_list=0 - store AMAZON_APP_STORE"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const-string v8, "AMAZON_APP_STORE"

    goto :goto_0

    .line 147
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v6, :cond_4

    .line 157
    .end local v1    # "i":I
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "rateAppIntent":Landroid/content/Intent;
    .end local v6    # "size":I
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_3
    const-string v8, "store  GOOGLE_PLAY_STORE"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const-string v8, "GOOGLE_PLAY_STORE"

    goto :goto_0

    .line 148
    .restart local v1    # "i":I
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v4    # "rateAppIntent":Landroid/content/Intent;
    .restart local v6    # "size":I
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 149
    .local v5, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "amazon"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 150
    const-string v8, "activities_list_found - store AMAZON_APP_STORE"

    invoke-static {v0, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v8, "AMAZON_APP_STORE"

    goto :goto_0

    .line 147
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static final getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    if-eqz p0, :cond_0

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 233
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 234
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x0

    .line 236
    .local v1, "installed":Z
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    const/4 v1, 0x1

    .line 241
    :goto_0
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isInstalledFromGoogle()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-static {}, Lcom/gamesys/android/common/tools/ToolsBox;->getCurrentApplication()Landroid/app/Application;

    move-result-object v0

    .line 191
    .local v0, "androidContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 192
    new-instance v2, Lcom/gamesys/android/common/tools/NotImplementedFunctionException;

    const-string v3, "Unable to get current application reflexively"

    invoke-direct {v2, v3}, Lcom/gamesys/android/common/tools/NotImplementedFunctionException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 195
    :cond_0
    invoke-static {v0}, Lcom/gamesys/android/common/tools/ToolsBox;->getInstallerName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "installer":Ljava/lang/String;
    const-string v3, "AMAZON_APP_STORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    :cond_1
    :goto_0
    return v2

    .line 198
    :cond_2
    const-string v3, "GOOGLE_PLAY_STORE"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 58
    :try_start_0
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 59
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/MessageDigest;->update([B)V

    .line 60
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 63
    .local v5, "messageDigest":[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v3, "hexString":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, v5

    if-lt v4, v6, :cond_0

    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 76
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    :goto_1
    return-object v6

    .line 65
    .restart local v0    # "digest":Ljava/security/MessageDigest;
    .restart local v3    # "hexString":Ljava/lang/StringBuffer;
    .restart local v4    # "i":I
    .restart local v5    # "messageDigest":[B
    :cond_0
    aget-byte v6, v5, v4

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "h":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_2

    .line 73
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v2    # "h":Ljava/lang/String;
    .end local v3    # "hexString":Ljava/lang/StringBuffer;
    .end local v4    # "i":I
    .end local v5    # "messageDigest":[B
    :catch_0
    move-exception v1

    .line 74
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 76
    const-string v6, ""

    goto :goto_1
.end method
