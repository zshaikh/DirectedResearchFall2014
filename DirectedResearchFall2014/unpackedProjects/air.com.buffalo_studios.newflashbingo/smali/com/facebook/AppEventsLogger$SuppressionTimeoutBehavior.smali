.class final enum Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field public static final enum RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

.field public static final enum RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    const-string v1, "RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    new-instance v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    const-string v1, "RESET_TIMEOUT_WHEN_LOG_ATTEMPTED"

    invoke-direct {v0, v1, v3}, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    sget-object v1, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->$VALUES:[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .locals 1

    const-class v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-object p0
.end method

.method public static values()[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    .locals 1

    sget-object v0, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->$VALUES:[Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    invoke-virtual {v0}, [Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    return-object v0
.end method
