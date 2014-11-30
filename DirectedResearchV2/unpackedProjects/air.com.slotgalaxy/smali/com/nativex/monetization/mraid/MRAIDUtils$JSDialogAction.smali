.class public final enum Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;
.super Ljava/lang/Enum;
.source "MRAIDUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JSDialogAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

.field public static final enum ALERT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

.field public static final enum BEFORE_UNLOAD:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

.field public static final enum CONFIRM:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

.field public static final enum PROMPT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 72
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    const-string v1, "PROMPT"

    invoke-direct {v0, v1, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->PROMPT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .line 73
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    const-string v1, "CONFIRM"

    invoke-direct {v0, v1, v3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->CONFIRM:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .line 74
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    const-string v1, "ALERT"

    invoke-direct {v0, v1, v4}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->ALERT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .line 75
    new-instance v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    const-string v1, "BEFORE_UNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->BEFORE_UNLOAD:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->PROMPT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->CONFIRM:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->ALERT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->BEFORE_UNLOAD:Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

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
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    return-object p0
.end method

.method public static values()[Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->$VALUES:[Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    invoke-virtual {v0}, [Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nativex/monetization/mraid/MRAIDUtils$JSDialogAction;

    return-object v0
.end method
