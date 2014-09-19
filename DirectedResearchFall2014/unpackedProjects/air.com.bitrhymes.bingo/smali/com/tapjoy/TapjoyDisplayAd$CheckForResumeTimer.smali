.class Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;
.super Ljava/util/TimerTask;
.source "TapjoyDisplayAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TapjoyDisplayAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckForResumeTimer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tapjoy/TapjoyDisplayAd;


# direct methods
.method private constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tapjoy/TapjoyDisplayAd;Lcom/tapjoy/TapjoyDisplayAd$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 228
    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;-><init>(Lcom/tapjoy/TapjoyDisplayAd;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const-wide/16 v6, 0x3c

    const-string v5, "Banner Ad"

    .line 232
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    .line 234
    const-string v0, "Banner Ad"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "banner elapsed_time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    div-long/2addr v1, v8

    div-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "m "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    div-long/2addr v1, v8

    rem-long/2addr v1, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 239
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->cancel()Z

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    const-string v0, "Banner Ad"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adView.isShown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v1, v1, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-object v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->adView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 249
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 251
    const-string v0, "Banner Ad"

    const-string v0, "call connect"

    invoke-static {v5, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TapjoyConnectCore;->callConnect()V

    .line 253
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->cancel()Z

    .line 258
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->this$0:Lcom/tapjoy/TapjoyDisplayAd;

    iget-wide v0, v0, Lcom/tapjoy/TapjoyDisplayAd;->elapsed_time:J

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 260
    invoke-virtual {p0}, Lcom/tapjoy/TapjoyDisplayAd$CheckForResumeTimer;->cancel()Z

    goto :goto_0
.end method
