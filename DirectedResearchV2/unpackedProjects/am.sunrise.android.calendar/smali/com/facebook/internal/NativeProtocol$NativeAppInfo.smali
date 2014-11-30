.class abstract Lcom/facebook/internal/NativeProtocol$NativeAppInfo;
.super Ljava/lang/Object;
.source "NativeProtocol.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/NativeProtocol$1;)V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract getPackage()Ljava/lang/String;
.end method

.method protected abstract getSignature()Ljava/lang/String;
.end method

.method public validateSignature(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 179
    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 180
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 181
    const-string v4, "generic"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    and-int/lit8 v2, v3, 0x2

    if-eqz v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v0

    .line 188
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 194
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    .line 195
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/facebook/internal/NativeProtocol$NativeAppInfo;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 194
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    move v0, v1

    .line 191
    goto :goto_0

    :cond_2
    move v0, v1

    .line 200
    goto :goto_0
.end method
