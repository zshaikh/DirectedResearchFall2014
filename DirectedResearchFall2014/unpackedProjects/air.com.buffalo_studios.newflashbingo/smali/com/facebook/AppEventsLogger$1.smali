.class final Lcom/facebook/AppEventsLogger$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/AppEventsLogger$EventSuppression;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "fb_mobile_activate_app"

    new-instance v1, Lcom/facebook/AppEventsLogger$EventSuppression;

    const/16 v2, 0x12c

    sget-object v3, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    invoke-direct {v1, v2, v3}, Lcom/facebook/AppEventsLogger$EventSuppression;-><init>(ILcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/AppEventsLogger$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
