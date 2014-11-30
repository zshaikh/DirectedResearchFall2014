.class public final enum Lcom/dolphin/browser/ui/a/c;
.super Ljava/lang/Enum;
.source "ScreenClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/ui/a/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/ui/a/c;

.field public static final enum b:Lcom/dolphin/browser/ui/a/c;

.field public static final enum c:Lcom/dolphin/browser/ui/a/c;

.field private static final synthetic d:[Lcom/dolphin/browser/ui/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/dolphin/browser/ui/a/c;

    const-string v1, "Small"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/ui/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    new-instance v0, Lcom/dolphin/browser/ui/a/c;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/ui/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    new-instance v0, Lcom/dolphin/browser/ui/a/c;

    const-string v1, "Large"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/ui/a/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/ui/a/c;->c:Lcom/dolphin/browser/ui/a/c;

    .line 4
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/ui/a/c;

    sget-object v1, Lcom/dolphin/browser/ui/a/c;->a:Lcom/dolphin/browser/ui/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/ui/a/c;->b:Lcom/dolphin/browser/ui/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/ui/a/c;->c:Lcom/dolphin/browser/ui/a/c;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/ui/a/c;->d:[Lcom/dolphin/browser/ui/a/c;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/ui/a/c;
    .locals 1

    .prologue
    .line 4
    const-class v0, Lcom/dolphin/browser/ui/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/ui/a/c;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/ui/a/c;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/dolphin/browser/ui/a/c;->d:[Lcom/dolphin/browser/ui/a/c;

    invoke-virtual {v0}, [Lcom/dolphin/browser/ui/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/ui/a/c;

    return-object v0
.end method
