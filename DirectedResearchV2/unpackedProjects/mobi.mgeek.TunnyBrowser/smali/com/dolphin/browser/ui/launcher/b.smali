.class final enum Lcom/dolphin/browser/ui/launcher/b;
.super Ljava/lang/Enum;
.source "DoneButton.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/ui/launcher/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/ui/launcher/b;

.field public static final enum b:Lcom/dolphin/browser/ui/launcher/b;

.field private static final synthetic c:[Lcom/dolphin/browser/ui/launcher/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/dolphin/browser/ui/launcher/b;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/ui/launcher/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/ui/launcher/b;->a:Lcom/dolphin/browser/ui/launcher/b;

    new-instance v0, Lcom/dolphin/browser/ui/launcher/b;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/ui/launcher/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/ui/launcher/b;->b:Lcom/dolphin/browser/ui/launcher/b;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/dolphin/browser/ui/launcher/b;

    sget-object v1, Lcom/dolphin/browser/ui/launcher/b;->a:Lcom/dolphin/browser/ui/launcher/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/ui/launcher/b;->b:Lcom/dolphin/browser/ui/launcher/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/dolphin/browser/ui/launcher/b;->c:[Lcom/dolphin/browser/ui/launcher/b;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/ui/launcher/b;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/dolphin/browser/ui/launcher/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/launcher/b;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/ui/launcher/b;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/dolphin/browser/ui/launcher/b;->c:[Lcom/dolphin/browser/ui/launcher/b;

    invoke-virtual {v0}, [Lcom/dolphin/browser/ui/launcher/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/ui/launcher/b;

    return-object v0
.end method
