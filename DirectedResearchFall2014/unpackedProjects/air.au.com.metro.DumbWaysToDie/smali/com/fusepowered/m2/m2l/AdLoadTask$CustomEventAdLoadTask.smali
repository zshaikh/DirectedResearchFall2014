.class Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;
.super Lcom/fusepowered/m2/m2l/AdLoadTask;
.source "AdLoadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/AdLoadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CustomEventAdLoadTask"
.end annotation


# instance fields
.field private mParamsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fusepowered/m2/m2l/AdViewController;Ljava/util/Map;)V
    .locals 0
    .parameter "adViewController"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fusepowered/m2/m2l/AdViewController;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p2, paramsMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/AdLoadTask;-><init>(Lcom/fusepowered/m2/m2l/AdViewController;)V

    .line 185
    iput-object p2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;->mParamsMap:Ljava/util/Map;

    .line 186
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 1

    .prologue
    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;->mParamsMap:Ljava/util/Map;

    .line 203
    return-void
.end method

.method execute()V
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;->mWeakAdViewController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fusepowered/m2/m2l/AdViewController;

    .line 192
    .local v0, adViewController:Lcom/fusepowered/m2/m2l/AdViewController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->setNotLoading()V

    .line 197
    invoke-virtual {v0}, Lcom/fusepowered/m2/m2l/AdViewController;->getMoPubView()Lcom/fusepowered/m2/m2l/MoPubView;

    move-result-object v1

    iget-object v2, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;->mParamsMap:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/fusepowered/m2/m2l/MoPubView;->loadCustomEvent(Ljava/util/Map;)V

    goto :goto_0
.end method

.method getParamsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/AdLoadTask$CustomEventAdLoadTask;->mParamsMap:Ljava/util/Map;

    return-object v0
.end method
