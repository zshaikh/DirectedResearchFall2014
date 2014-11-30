.class public final enum Lcom/dolphin/browser/launcher/ca;
.super Ljava/lang/Enum;
.source "MiddlePage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/launcher/ca;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/launcher/ca;

.field public static final enum b:Lcom/dolphin/browser/launcher/ca;

.field public static final enum c:Lcom/dolphin/browser/launcher/ca;

.field public static final enum d:Lcom/dolphin/browser/launcher/ca;

.field private static final synthetic e:[Lcom/dolphin/browser/launcher/ca;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/dolphin/browser/launcher/ca;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/launcher/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    .line 40
    new-instance v0, Lcom/dolphin/browser/launcher/ca;

    const-string v1, "Minimized"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/launcher/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    .line 41
    new-instance v0, Lcom/dolphin/browser/launcher/ca;

    const-string v1, "Maximized"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/launcher/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    .line 42
    new-instance v0, Lcom/dolphin/browser/launcher/ca;

    const-string v1, "Animating"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/launcher/ca;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/launcher/ca;->d:Lcom/dolphin/browser/launcher/ca;

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dolphin/browser/launcher/ca;

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->a:Lcom/dolphin/browser/launcher/ca;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->b:Lcom/dolphin/browser/launcher/ca;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->c:Lcom/dolphin/browser/launcher/ca;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/launcher/ca;->d:Lcom/dolphin/browser/launcher/ca;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/launcher/ca;->e:[Lcom/dolphin/browser/launcher/ca;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/launcher/ca;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/dolphin/browser/launcher/ca;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/launcher/ca;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/launcher/ca;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/dolphin/browser/launcher/ca;->e:[Lcom/dolphin/browser/launcher/ca;

    invoke-virtual {v0}, [Lcom/dolphin/browser/launcher/ca;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/launcher/ca;

    return-object v0
.end method
