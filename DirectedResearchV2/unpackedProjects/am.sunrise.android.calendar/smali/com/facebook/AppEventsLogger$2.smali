.class final Lcom/facebook/AppEventsLogger$2;
.super Ljava/util/TimerTask;
.source "AppEventsLogger.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 601
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 604
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_0

    .line 605
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->TIMER:Lcom/facebook/AppEventsLogger$FlushReason;

    # invokes: Lcom/facebook/AppEventsLogger;->flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->access$100(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 607
    :cond_0
    return-void
.end method
