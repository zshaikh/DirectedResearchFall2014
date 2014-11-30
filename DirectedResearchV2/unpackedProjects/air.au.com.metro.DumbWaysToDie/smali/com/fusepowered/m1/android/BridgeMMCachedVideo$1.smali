.class Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;
.super Lcom/fusepowered/m1/android/AdCache$Iterator;
.source "BridgeMMCachedVideo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fusepowered/m1/android/BridgeMMCachedVideo;->availableCachedVideos(Ljava/util/HashMap;)Lcom/fusepowered/m1/android/MMJSResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m1/android/BridgeMMCachedVideo;

.field final synthetic val$array:Lorg/json/JSONArray;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fusepowered/m1/android/BridgeMMCachedVideo;Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;->this$0:Lcom/fusepowered/m1/android/BridgeMMCachedVideo;

    iput-object p2, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;->val$array:Lorg/json/JSONArray;

    invoke-direct {p0}, Lcom/fusepowered/m1/android/AdCache$Iterator;-><init>()V

    return-void
.end method


# virtual methods
.method callback(Lcom/fusepowered/m1/android/CachedAd;)Z
    .locals 2
    .param p1, "ad"    # Lcom/fusepowered/m1/android/CachedAd;

    .prologue
    .line 62
    instance-of v0, p1, Lcom/fusepowered/m1/android/VideoAd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/fusepowered/m1/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/fusepowered/m1/android/BridgeMMCachedVideo$1;->val$array:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lcom/fusepowered/m1/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 66
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
