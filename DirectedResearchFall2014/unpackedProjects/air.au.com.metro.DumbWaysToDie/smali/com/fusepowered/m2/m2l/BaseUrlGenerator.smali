.class public abstract Lcom/fusepowered/m2/m2l/BaseUrlGenerator;
.super Ljava/lang/Object;
.source "BaseUrlGenerator.java"


# instance fields
.field private mFirstParam:Z

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getParamDelimiter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mFirstParam:Z

    if-eqz v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mFirstParam:Z

    .line 71
    const-string v0, "?"

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "&"

    goto :goto_0
.end method


# virtual methods
.method protected addParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 58
    if-eqz p2, :cond_0

    invoke-static {p2}, Lcom/fusepowered/m2/m2l/util/Strings;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->getParamDelimiter()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public abstract generateUrlString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected getAppVersionFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 111
    .local v1, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 112
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 113
    .local v0, exception:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getFinalUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getUdidFromContext(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initUrlString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "serverHostname"
    .parameter "handlerType"

    .prologue
    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->mFirstParam:Z

    .line 51
    return-void
.end method

.method protected setApiVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "apiVersion"

    .prologue
    .line 77
    const-string v0, "v"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method protected setAppVersion(Ljava/lang/String;)V
    .locals 1
    .parameter "appVersion"

    .prologue
    .line 81
    const-string v0, "av"

    invoke-virtual {p0, v0, p1}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected varargs setDeviceInfo([Ljava/lang/String;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .local v1, result:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-ge v2, v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p1

    sub-int/2addr v2, v4

    if-lt v0, v2, :cond_2

    .line 97
    array-length v2, p1

    sub-int/2addr v2, v4

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "dn"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected setExternalStoragePermission(Z)V
    .locals 2
    .parameter "isExternalStoragePermissionGranted"

    .prologue
    .line 85
    const-string v0, "android_perms_ext_storage"

    if-eqz p1, :cond_0

    const-string v1, "1"

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void

    .line 85
    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method protected setUdid(Ljava/lang/String;)V
    .locals 4
    .parameter "udid"

    .prologue
    .line 103
    if-nez p1, :cond_0

    const-string v1, ""

    move-object v0, v1

    .line 104
    .local v0, udidDigest:Ljava/lang/String;
    :goto_0
    const-string v1, "udid"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sha:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/fusepowered/m2/m2l/BaseUrlGenerator;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    return-void

    .line 103
    .end local v0           #udidDigest:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Lcom/fusepowered/m2/m2l/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method
