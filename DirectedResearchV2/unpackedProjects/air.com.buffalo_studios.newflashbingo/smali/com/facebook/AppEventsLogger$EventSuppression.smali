.class Lcom/facebook/AppEventsLogger$EventSuppression;
.super Ljava/lang/Object;


# instance fields
.field private behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field private timeoutPeriod:I


# direct methods
.method constructor <init>(ILcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    iput-object p2, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-void
.end method


# virtual methods
.method getBehavior()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .locals 1

    iget-object v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->behavior:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-object v0
.end method

.method getTimeoutPeriod()I
    .locals 1

    iget v0, p0, Lcom/facebook/AppEventsLogger$EventSuppression;->timeoutPeriod:I

    return v0
.end method
