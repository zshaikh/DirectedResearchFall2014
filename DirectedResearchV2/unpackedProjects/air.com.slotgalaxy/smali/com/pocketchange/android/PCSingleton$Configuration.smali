.class public Lcom/pocketchange/android/PCSingleton$Configuration;
.super Lcom/pocketchange/android/util/Configuration;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pocketchange/android/PCSingleton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Configuration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pocketchange/android/PCSingleton$Configuration$b;,
        Lcom/pocketchange/android/PCSingleton$Configuration$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pocketchange/android/PCSingleton$Configuration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1671
    new-instance v0, Lcom/pocketchange/android/PCSingleton$Configuration$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pocketchange/android/PCSingleton$Configuration$b;-><init>(Lcom/pocketchange/android/PCSingleton$1;)V

    sput-object v0, Lcom/pocketchange/android/PCSingleton$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1721
    invoke-direct {p0, p1}, Lcom/pocketchange/android/util/Configuration;-><init>(Landroid/os/Parcel;)V

    .line 1722
    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .param p2, "props"    # Ljava/util/Properties;
    .param p3, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/pocketchange/android/util/Configuration$ManifestEntry",
            "<*>;>;",
            "Ljava/util/Properties;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1729
    .local p1, "manifest":Ljava/util/Set;, "Ljava/util/Set<Lcom/pocketchange/android/util/Configuration$ManifestEntry<*>;>;"
    invoke-direct {p0, p1, p2}, Lcom/pocketchange/android/util/Configuration;-><init>(Ljava/util/Set;Ljava/util/Properties;)V

    .line 1730
    if-nez p3, :cond_0

    .line 1731
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "appId cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1733
    :cond_0
    const-string v0, "appId"

    invoke-virtual {p0, v0, p3}, Lcom/pocketchange/android/PCSingleton$Configuration;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1734
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->h()V

    .line 1735
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;)Lcom/pocketchange/android/PCSingleton$Configuration;
    .locals 1

    .prologue
    .line 1670
    invoke-static {p0, p1}, Lcom/pocketchange/android/PCSingleton$Configuration;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/pocketchange/android/PCSingleton$Configuration;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;)Ljava/util/Properties;
    .locals 3

    .prologue
    const-string v2, "PocketChange"

    .line 1709
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pc_settings"

    invoke-static {p0, v0, v1}, Lcom/pocketchange/android/content/ContextUtils;->loadPropertiesFromResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1717
    :goto_0
    return-object v0

    .line 1710
    :catch_0
    move-exception v0

    .line 1711
    instance-of v1, v0, Ljava/io/FileNotFoundException;

    if-eqz v1, :cond_0

    .line 1712
    const-string v0, "PocketChange"

    const-string v0, "Using default properties, no overrides found"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1714
    :cond_0
    const-string v1, "PocketChange"

    const-string v1, "Error loading properties"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Lcom/pocketchange/android/PCSingleton$Configuration;
    .locals 3

    .prologue
    .line 1690
    new-instance v0, Lcom/pocketchange/android/PCSingleton$Configuration;

    invoke-static {}, Lcom/pocketchange/android/PCSingleton$Configuration;->g()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->a(Landroid/content/Context;)Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/pocketchange/android/PCSingleton$Configuration;-><init>(Ljava/util/Set;Ljava/util/Properties;Ljava/lang/String;)V

    return-object v0
.end method

.method private static g()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/pocketchange/android/util/Configuration$ManifestEntry",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-class v5, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/String;

    .line 1694
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1695
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "debug"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1696
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "sandboxMode"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1697
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "autoLogin"

    const-class v3, Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, v5, v3}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1698
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "apiVersion"

    const-class v3, Ljava/lang/String;

    const-string v3, "1"

    invoke-direct {v1, v2, v4, v3}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1699
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "productionApiUrl"

    const-class v3, Ljava/lang/String;

    const-string v3, "https://api.pocketchange.com"

    invoke-direct {v1, v2, v4, v3}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1700
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "productionLoggingApiUrl"

    const-class v3, Ljava/lang/String;

    const-string v3, "https://events.pocketchange.com/v1"

    invoke-direct {v1, v2, v4, v3}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1701
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "sandboxApiUrl"

    const-class v3, Ljava/lang/String;

    const-string v3, "https://sandbox.pocketchange.com"

    invoke-direct {v1, v2, v4, v3}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1702
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "loggingApiUrl"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v4, v7}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1703
    new-instance v1, Lcom/pocketchange/android/util/Configuration$ManifestEntry;

    const-string v2, "nullEmailValue"

    const-class v3, Ljava/lang/String;

    invoke-direct {v1, v2, v4, v7}, Lcom/pocketchange/android/util/Configuration$ManifestEntry;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1704
    return-object v0
.end method

.method private h()V
    .locals 4

    .prologue
    const-string v3, "loggingApiUrl"

    .line 1767
    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->isSandboxMode()Z

    move-result v0

    .line 1768
    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->j()Ljava/lang/String;

    move-result-object v1

    .line 1769
    :goto_0
    const-string v2, "apiUrl"

    invoke-virtual {p0, v2, v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getAPIVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1771
    const-string v2, "versionedApiUrl"

    invoke-virtual {p0, v2, v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1772
    const-string v2, "loggingApiUrl"

    invoke-virtual {p0, v3}, Lcom/pocketchange/android/PCSingleton$Configuration;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1773
    const-string v2, "loggingApiUrl"

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_1
    invoke-virtual {p0, v3, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1775
    :cond_0
    return-void

    .line 1768
    :cond_1
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->i()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1773
    :cond_2
    const-string v0, "productionLoggingApiUrl"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1826
    const-string v0, "productionApiUrl"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1830
    const-string v0, "sandboxApiUrl"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1834
    const-string v0, "loggingApiUrl"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getVersionedAPIURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/notifications"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 1754
    const-string v0, "sandboxMode"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/pocketchange/android/PCSingleton$Configuration;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1755
    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->h()V

    .line 1756
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getVersionedAPIURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/rewards"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1810
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getVersionedAPIURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getVersionedAPIURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/vouchers"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getVersionedAPIURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1822
    const-string v0, "nullEmailValue"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPIURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1782
    const-string v0, "apiUrl"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAPIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1778
    const-string v0, "apiVersion"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1738
    const-string v0, "appId"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoggingURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionsURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sessions"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShopURL()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getAPIURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/store"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersionedAPIURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1786
    const-string v0, "versionedApiUrl"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAutoLoginEnabled()Z
    .locals 1

    .prologue
    .line 1759
    const-string v0, "autoLogin"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 1742
    const-string v0, "debug"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSandboxMode()Z
    .locals 1

    .prologue
    .line 1750
    const-string v0, "sandboxMode"

    invoke-virtual {p0, v0}, Lcom/pocketchange/android/PCSingleton$Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
