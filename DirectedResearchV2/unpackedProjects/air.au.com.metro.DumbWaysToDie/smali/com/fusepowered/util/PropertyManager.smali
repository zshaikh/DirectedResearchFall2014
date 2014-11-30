.class public Lcom/fusepowered/util/PropertyManager;
.super Ljava/lang/Object;
.source "PropertyManager.java"


# static fields
.field public static API_VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "api.version"

    sput-object v0, Lcom/fusepowered/util/PropertyManager;->API_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 39
    .local v0, "gameVersion":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 42
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 43
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static readProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "propertyName"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v3, 0x0

    .line 20
    .local v3, "propertyValue":Ljava/lang/String;
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 21
    invoke-static {}, Lcom/fusepowered/fuseapi/FuseAPI;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 22
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 26
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    :try_start_0
    const-string v5, "fuse.properties"

    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 27
    .local v1, "inputStream":Ljava/io/InputStream;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 28
    .local v2, "properties":Ljava/util/Properties;
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 29
    invoke-virtual {v2, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 33
    .end local v0    # "assetManager":Landroid/content/res/AssetManager;
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "properties":Ljava/util/Properties;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-object v3

    .line 30
    .restart local v0    # "assetManager":Landroid/content/res/AssetManager;
    .restart local v4    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v5

    goto :goto_0
.end method
