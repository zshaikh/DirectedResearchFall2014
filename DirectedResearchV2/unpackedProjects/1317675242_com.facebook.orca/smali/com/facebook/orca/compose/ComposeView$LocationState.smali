.class final enum Lcom/facebook/orca/compose/ComposeView$LocationState;
.super Ljava/lang/Enum;
.source "ComposeView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/orca/compose/ComposeView$LocationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/orca/compose/ComposeView$LocationState;

.field public static final enum FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

.field public static final enum HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

.field public static final enum LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeView$LocationState;

.field public static final enum NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/facebook/orca/compose/ComposeView$LocationState;

    const-string v1, "HAS_LOCATION"

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/compose/ComposeView$LocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    .line 93
    new-instance v0, Lcom/facebook/orca/compose/ComposeView$LocationState;

    const-string v1, "FINDING_LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/facebook/orca/compose/ComposeView$LocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    .line 94
    new-instance v0, Lcom/facebook/orca/compose/ComposeView$LocationState;

    const-string v1, "NO_LOCATION"

    invoke-direct {v0, v1, v4}, Lcom/facebook/orca/compose/ComposeView$LocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    .line 95
    new-instance v0, Lcom/facebook/orca/compose/ComposeView$LocationState;

    const-string v1, "LOCATION_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/facebook/orca/compose/ComposeView$LocationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeView$LocationState;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/orca/compose/ComposeView$LocationState;

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->HAS_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->FINDING_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->NO_LOCATION:Lcom/facebook/orca/compose/ComposeView$LocationState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/orca/compose/ComposeView$LocationState;->LOCATION_ERROR:Lcom/facebook/orca/compose/ComposeView$LocationState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->$VALUES:[Lcom/facebook/orca/compose/ComposeView$LocationState;

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
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/orca/compose/ComposeView$LocationState;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/facebook/orca/compose/ComposeView$LocationState;

    return-object p0
.end method

.method public static values()[Lcom/facebook/orca/compose/ComposeView$LocationState;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/facebook/orca/compose/ComposeView$LocationState;->$VALUES:[Lcom/facebook/orca/compose/ComposeView$LocationState;

    invoke-virtual {v0}, [Lcom/facebook/orca/compose/ComposeView$LocationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/orca/compose/ComposeView$LocationState;

    return-object v0
.end method
