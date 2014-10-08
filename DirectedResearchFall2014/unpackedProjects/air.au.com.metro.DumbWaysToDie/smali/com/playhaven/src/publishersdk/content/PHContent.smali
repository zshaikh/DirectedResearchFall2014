.class public Lcom/playhaven/src/publishersdk/content/PHContent;
.super Lv2/com/playhaven/model/PHContent;
.source "PHContent.java"


# direct methods
.method public constructor <init>(Lv2/com/playhaven/model/PHContent;)V
    .locals 2
    .param p1, "content"    # Lv2/com/playhaven/model/PHContent;

    .prologue
    .line 12
    invoke-direct {p0}, Lv2/com/playhaven/model/PHContent;-><init>()V

    .line 13
    iget-object v0, p1, Lv2/com/playhaven/model/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->transition:Lv2/com/playhaven/model/PHContent$TransitionType;

    .line 14
    iget-object v0, p1, Lv2/com/playhaven/model/PHContent;->closeURL:Ljava/lang/String;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->closeURL:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lv2/com/playhaven/model/PHContent;->context:Lorg/json/JSONObject;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->context:Lorg/json/JSONObject;

    .line 16
    iget-object v0, p1, Lv2/com/playhaven/model/PHContent;->url:Landroid/net/Uri;

    iput-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->url:Landroid/net/Uri;

    .line 17
    iget-wide v0, p1, Lv2/com/playhaven/model/PHContent;->closeButtonDelay:D

    iput-wide v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->closeButtonDelay:D

    .line 18
    iget-boolean v0, p1, Lv2/com/playhaven/model/PHContent;->preloaded:Z

    iput-boolean v0, p0, Lcom/playhaven/src/publishersdk/content/PHContent;->preloaded:Z

    .line 19
    invoke-virtual {p1}, Lv2/com/playhaven/model/PHContent;->getFrames()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/playhaven/src/publishersdk/content/PHContent;->setFrames(Ljava/util/HashMap;)V

    .line 20
    return-void
.end method
