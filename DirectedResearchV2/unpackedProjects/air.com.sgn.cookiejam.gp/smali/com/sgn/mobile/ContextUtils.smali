.class public Lcom/sgn/mobile/ContextUtils;
.super Ljava/lang/Object;
.source "ContextUtils.java"


# static fields
.field private static instance:Lcom/sgn/mobile/ContextUtils;


# instance fields
.field private final context:Landroid/content/Context;

.field private mainActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final properties:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/sgn/mobile/ContextUtils;->readProperties()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/sgn/mobile/ContextUtils;->properties:Landroid/os/Bundle;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".AppEntry"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    .local v1, "name":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    iput-object v2, p0, Lcom/sgn/mobile/ContextUtils;->mainActivityClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 38
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "Unable to retrieve main activity class [%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static get(Landroid/content/Context;)Lcom/sgn/mobile/ContextUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    sget-object v0, Lcom/sgn/mobile/ContextUtils;->instance:Lcom/sgn/mobile/ContextUtils;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/sgn/mobile/ContextUtils;

    invoke-direct {v0, p0}, Lcom/sgn/mobile/ContextUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sgn/mobile/ContextUtils;->instance:Lcom/sgn/mobile/ContextUtils;

    .line 23
    :cond_0
    sget-object v0, Lcom/sgn/mobile/ContextUtils;->instance:Lcom/sgn/mobile/ContextUtils;

    return-object v0
.end method

.method private readProperties()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 65
    iget-object v4, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 66
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "packageName":Ljava/lang/String;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 69
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p0    # "this":Lcom/sgn/mobile/ContextUtils;
    :goto_0
    return-object v4

    .line 70
    .restart local p0    # "this":Lcom/sgn/mobile/ContextUtils;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 71
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "Error reading properties"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/sgn/mobile/ContextUtils;
    check-cast p0, Landroid/os/Bundle;

    move-object v4, p0

    goto :goto_0
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "SGNAppID"

    invoke-virtual {p0, v0}, Lcom/sgn/mobile/ContextUtils;->getRequiredProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    iget-object v1, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 102
    .local v0, "nameId":I
    iget-object v1, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getBooleanProperty(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sgn/mobile/ContextUtils;->properties:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    iget-object v1, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDrawable(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-virtual {p0, p1, p2}, Lcom/sgn/mobile/ContextUtils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "val":Ljava/lang/String;
    iget-object v1, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getIMEI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 92
    iget-object v1, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 93
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInstallVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 81
    iget-object v4, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 82
    .local v2, "manager":Landroid/content/pm/PackageManager;
    iget-object v4, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "name":Ljava/lang/String;
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 85
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v4

    .line 86
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 87
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getLaunchIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sgn/mobile/ContextUtils;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sgn/mobile/ContextUtils;->mainActivityClass:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getProperties()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sgn/mobile/ContextUtils;->properties:Landroid/os/Bundle;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    iget-object v1, p0, Lcom/sgn/mobile/ContextUtils;->properties:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 48
    .local v0, "prop":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 49
    const/4 v1, 0x0

    .line 50
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dflt"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/sgn/mobile/ContextUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "rv":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, p2

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getRequiredProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/sgn/mobile/ContextUtils;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "rv":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    const-string v1, "Missing property %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Lcom/jesusla/ane/Extension;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/sgn/mobile/ContextUtils;
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    .line 61
    :goto_0
    return-object v1

    .restart local p0    # "this":Lcom/sgn/mobile/ContextUtils;
    :cond_0
    move-object v1, v0

    goto :goto_0
.end method
