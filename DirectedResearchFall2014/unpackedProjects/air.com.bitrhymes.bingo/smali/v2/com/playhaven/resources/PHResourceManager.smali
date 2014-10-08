.class public Lv2/com/playhaven/resources/PHResourceManager;
.super Ljava/lang/Object;
.source "PHResourceManager.java"


# static fields
.field private static res_manager:Lv2/com/playhaven/resources/PHResourceManager;


# instance fields
.field private hasLoaded:Z

.field private resources:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lv2/com/playhaven/resources/types/PHResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-object v0, Lv2/com/playhaven/resources/PHResourceManager;->res_manager:Lv2/com/playhaven/resources/PHResourceManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->hasLoaded:Z

    .line 44
    return-void
.end method

.method private loadResources()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->hasLoaded:Z

    if-nez v0, :cond_0

    .line 81
    invoke-direct {p0}, Lv2/com/playhaven/resources/PHResourceManager;->registerResources()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->hasLoaded:Z

    .line 84
    :cond_0
    return-void
.end method

.method private registerResources()V
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    .line 36
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    const-string v1, "close_inactive"

    new-instance v2, Lv2/com/playhaven/resources/data/PHCloseImageResource;

    invoke-direct {v2}, Lv2/com/playhaven/resources/data/PHCloseImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    const-string v1, "close_active"

    new-instance v2, Lv2/com/playhaven/resources/data/PHCloseActiveImageResource;

    invoke-direct {v2}, Lv2/com/playhaven/resources/data/PHCloseActiveImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    const-string v1, "badge_image"

    new-instance v2, Lv2/com/playhaven/resources/data/PHBadgeImageResource;

    invoke-direct {v2}, Lv2/com/playhaven/resources/data/PHBadgeImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public static sharedResourceManager()Lv2/com/playhaven/resources/PHResourceManager;
    .locals 3

    .prologue
    .line 49
    :try_start_0
    sget-object v1, Lv2/com/playhaven/resources/PHResourceManager;->res_manager:Lv2/com/playhaven/resources/PHResourceManager;

    if-nez v1, :cond_0

    .line 51
    new-instance v1, Lv2/com/playhaven/resources/PHResourceManager;

    invoke-direct {v1}, Lv2/com/playhaven/resources/PHResourceManager;-><init>()V

    sput-object v1, Lv2/com/playhaven/resources/PHResourceManager;->res_manager:Lv2/com/playhaven/resources/PHResourceManager;

    .line 52
    sget-object v1, Lv2/com/playhaven/resources/PHResourceManager;->res_manager:Lv2/com/playhaven/resources/PHResourceManager;

    invoke-direct {v1}, Lv2/com/playhaven/resources/PHResourceManager;->loadResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :cond_0
    :goto_0
    sget-object v1, Lv2/com/playhaven/resources/PHResourceManager;->res_manager:Lv2/com/playhaven/resources/PHResourceManager;

    return-object v1

    .line 54
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHResourceManager - sharedResourceManager"

    sget-object v2, Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;->critical:Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lv2/com/playhaven/requests/crashreport/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lv2/com/playhaven/requests/crashreport/PHCrashReport$Urgency;)Lv2/com/playhaven/requests/crashreport/PHCrashReport;

    goto :goto_0
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Lv2/com/playhaven/resources/types/PHResource;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lv2/com/playhaven/resources/PHResourceManager;
    check-cast p0, Lv2/com/playhaven/resources/types/PHResource;

    move-object v0, p0

    .line 66
    :goto_0
    return-object v0

    .restart local p0    # "this":Lv2/com/playhaven/resources/PHResourceManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerResource(Ljava/lang/String;Lv2/com/playhaven/resources/types/PHResource;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resource"    # Lv2/com/playhaven/resources/types/PHResource;

    .prologue
    .line 71
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 73
    iget-object v0, p0, Lv2/com/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-void
.end method
