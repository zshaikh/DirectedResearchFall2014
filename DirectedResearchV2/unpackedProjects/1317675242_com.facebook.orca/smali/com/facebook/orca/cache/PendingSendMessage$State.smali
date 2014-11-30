.class public final enum Lcom/facebook/orca/cache/PendingSendMessage$State;
.super Ljava/lang/Enum;
.source "PendingSendMessage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/cache/PendingSendMessage$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/cache/PendingSendMessage$State;

.field public static final enum CANCELLED:Lcom/facebook/orca/cache/PendingSendMessage$State;

.field public static final enum DELAYED_RETRY:Lcom/facebook/orca/cache/PendingSendMessage$State;

.field public static final enum FAILED:Lcom/facebook/orca/cache/PendingSendMessage$State;

.field public static final enum SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

.field public static final enum SENT:Lcom/facebook/orca/cache/PendingSendMessage$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-instance v0, Lcom/facebook/orca/cache/PendingSendMessage$State;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/cache/PendingSendMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 74
    new-instance v0, Lcom/facebook/orca/cache/PendingSendMessage$State;

    const-string v1, "DELAYED_RETRY"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/cache/PendingSendMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->DELAYED_RETRY:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 77
    new-instance v0, Lcom/facebook/orca/cache/PendingSendMessage$State;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/cache/PendingSendMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->FAILED:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 80
    new-instance v0, Lcom/facebook/orca/cache/PendingSendMessage$State;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/cache/PendingSendMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENT:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 83
    new-instance v0, Lcom/facebook/orca/cache/PendingSendMessage$State;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v6}, Lcom/facebook/orca/cache/PendingSendMessage$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->CANCELLED:Lcom/facebook/orca/cache/PendingSendMessage$State;

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/orca/cache/PendingSendMessage$State;

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENDING:Lcom/facebook/orca/cache/PendingSendMessage$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->DELAYED_RETRY:Lcom/facebook/orca/cache/PendingSendMessage$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->FAILED:Lcom/facebook/orca/cache/PendingSendMessage$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->SENT:Lcom/facebook/orca/cache/PendingSendMessage$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/orca/cache/PendingSendMessage$State;->CANCELLED:Lcom/facebook/orca/cache/PendingSendMessage$State;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->$VALUES:[Lcom/facebook/orca/cache/PendingSendMessage$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/cache/PendingSendMessage$State;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/facebook/orca/cache/PendingSendMessage$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/cache/PendingSendMessage$State;

    return-object p0
.end method

.method public static values()[Lcom/facebook/orca/cache/PendingSendMessage$State;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/facebook/orca/cache/PendingSendMessage$State;->$VALUES:[Lcom/facebook/orca/cache/PendingSendMessage$State;

    invoke-virtual {v0}, [Lcom/facebook/orca/cache/PendingSendMessage$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/cache/PendingSendMessage$State;

    return-object v0
.end method
