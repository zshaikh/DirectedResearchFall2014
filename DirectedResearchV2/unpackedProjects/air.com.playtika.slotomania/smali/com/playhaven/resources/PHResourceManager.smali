.class public Lcom/playhaven/resources/PHResourceManager;
.super Ljava/lang/Object;
.source "PHResourceManager.java"


# static fields
.field private static res_manager:Lcom/playhaven/resources/PHResourceManager;


# instance fields
.field private hasLoaded:Z

.field private resources:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/playhaven/resources/PHResource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/playhaven/resources/PHResourceManager;->hasLoaded:Z

    .line 41
    return-void
.end method

.method private loadResources()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 74
    iget-boolean v0, p0, Lcom/playhaven/resources/PHResourceManager;->hasLoaded:Z

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/playhaven/resources/PHResourceManager;->registerResources()V

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/playhaven/resources/PHResourceManager;->hasLoaded:Z

    .line 79
    :cond_0
    return-void
.end method

.method private registerResources()V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    .line 34
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    const-string v1, "close_inactive"

    new-instance v2, Lcom/playhaven/resources/files/PHCloseImageResource;

    invoke-direct {v2}, Lcom/playhaven/resources/files/PHCloseImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    const-string v1, "close_active"

    new-instance v2, Lcom/playhaven/resources/files/PHCloseActiveImageResource;

    invoke-direct {v2}, Lcom/playhaven/resources/files/PHCloseActiveImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    const-string v1, "badge_image"

    new-instance v2, Lcom/playhaven/resources/files/PHBadgeImageResource;

    invoke-direct {v2}, Lcom/playhaven/resources/files/PHBadgeImageResource;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public static sharedResourceManager()Lcom/playhaven/resources/PHResourceManager;
    .locals 3

    .prologue
    .line 45
    :try_start_0
    sget-object v1, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Lcom/playhaven/resources/PHResourceManager;

    invoke-direct {v1}, Lcom/playhaven/resources/PHResourceManager;-><init>()V

    sput-object v1, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    .line 47
    sget-object v1, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    invoke-direct {v1}, Lcom/playhaven/resources/PHResourceManager;->loadResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    sget-object v1, Lcom/playhaven/resources/PHResourceManager;->res_manager:Lcom/playhaven/resources/PHResourceManager;

    return-object v1

    .line 49
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PHResourceManager - sharedResourceManager"

    sget-object v2, Lcom/playhaven/src/common/PHCrashReport$Urgency;->critical:Lcom/playhaven/src/common/PHCrashReport$Urgency;

    invoke-static {v0, v1, v2}, Lcom/playhaven/src/common/PHCrashReport;->reportCrash(Ljava/lang/Exception;Ljava/lang/String;Lcom/playhaven/src/common/PHCrashReport$Urgency;)Lcom/playhaven/src/common/PHCrashReport;

    goto :goto_0
.end method


# virtual methods
.method public getResource(Ljava/lang/String;)Lcom/playhaven/resources/PHResource;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/playhaven/resources/PHResourceManager;
    check-cast p0, Lcom/playhaven/resources/PHResource;

    move-object v0, p0

    .line 61
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/playhaven/resources/PHResourceManager;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerResource(Ljava/lang/String;Lcom/playhaven/resources/PHResource;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "resource"    # Lcom/playhaven/resources/PHResource;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 67
    if-eqz p2, :cond_0

    .line 68
    iget-object v0, p0, Lcom/playhaven/resources/PHResourceManager;->resources:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    return-void
.end method
