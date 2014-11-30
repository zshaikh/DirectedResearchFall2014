.class public final enum Lcom/dolphin/browser/ui/view/aa;
.super Ljava/lang/Enum;
.source "WebImageView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/ui/view/aa;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/ui/view/aa;

.field public static final enum b:Lcom/dolphin/browser/ui/view/aa;

.field private static final synthetic c:[Lcom/dolphin/browser/ui/view/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/dolphin/browser/ui/view/aa;

    const-string v1, "Maximum"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/ui/view/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/ui/view/aa;->a:Lcom/dolphin/browser/ui/view/aa;

    .line 92
    new-instance v0, Lcom/dolphin/browser/ui/view/aa;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/ui/view/aa;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/ui/view/aa;->b:Lcom/dolphin/browser/ui/view/aa;

    .line 84
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/ui/view/aa;

    sget-object v1, Lcom/dolphin/browser/ui/view/aa;->a:Lcom/dolphin/browser/ui/view/aa;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/ui/view/aa;->b:Lcom/dolphin/browser/ui/view/aa;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/ui/view/aa;->c:[Lcom/dolphin/browser/ui/view/aa;

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
    .line 84
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/ui/view/aa;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/dolphin/browser/ui/view/aa;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/view/aa;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/ui/view/aa;
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/dolphin/browser/ui/view/aa;->c:[Lcom/dolphin/browser/ui/view/aa;

    invoke-virtual {v0}, [Lcom/dolphin/browser/ui/view/aa;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/ui/view/aa;

    return-object v0
.end method
