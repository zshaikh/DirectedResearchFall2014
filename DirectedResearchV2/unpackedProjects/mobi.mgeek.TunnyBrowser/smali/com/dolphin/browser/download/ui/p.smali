.class final enum Lcom/dolphin/browser/download/ui/p;
.super Ljava/lang/Enum;
.source "BrowserFileManagerActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/download/ui/p;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/download/ui/p;

.field public static final enum b:Lcom/dolphin/browser/download/ui/p;

.field public static final enum c:Lcom/dolphin/browser/download/ui/p;

.field public static final enum d:Lcom/dolphin/browser/download/ui/p;

.field private static final synthetic e:[Lcom/dolphin/browser/download/ui/p;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    new-instance v0, Lcom/dolphin/browser/download/ui/p;

    const-string v1, "List"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/download/ui/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    new-instance v0, Lcom/dolphin/browser/download/ui/p;

    const-string v1, "CategoryGrid"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/download/ui/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/p;->b:Lcom/dolphin/browser/download/ui/p;

    new-instance v0, Lcom/dolphin/browser/download/ui/p;

    const-string v1, "Category"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/download/ui/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    new-instance v0, Lcom/dolphin/browser/download/ui/p;

    const-string v1, "Unknow"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/download/ui/p;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/p;->d:Lcom/dolphin/browser/download/ui/p;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dolphin/browser/download/ui/p;

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->a:Lcom/dolphin/browser/download/ui/p;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->b:Lcom/dolphin/browser/download/ui/p;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->c:Lcom/dolphin/browser/download/ui/p;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/download/ui/p;->d:Lcom/dolphin/browser/download/ui/p;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/download/ui/p;->e:[Lcom/dolphin/browser/download/ui/p;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/download/ui/p;
    .locals 1

    .prologue
    .line 91
    const-class v0, Lcom/dolphin/browser/download/ui/p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/ui/p;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/download/ui/p;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/dolphin/browser/download/ui/p;->e:[Lcom/dolphin/browser/download/ui/p;

    invoke-virtual {v0}, [Lcom/dolphin/browser/download/ui/p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/download/ui/p;

    return-object v0
.end method
