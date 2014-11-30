.class final enum Lcom/dolphin/browser/download/ui/am;
.super Ljava/lang/Enum;
.source "DownloadActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/download/ui/am;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/download/ui/am;

.field public static final enum b:Lcom/dolphin/browser/download/ui/am;

.field public static final enum c:Lcom/dolphin/browser/download/ui/am;

.field public static final enum d:Lcom/dolphin/browser/download/ui/am;

.field private static final synthetic e:[Lcom/dolphin/browser/download/ui/am;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1117
    new-instance v0, Lcom/dolphin/browser/download/ui/am;

    const-string v1, "Time"

    invoke-direct {v0, v1, v2}, Lcom/dolphin/browser/download/ui/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    new-instance v0, Lcom/dolphin/browser/download/ui/am;

    const-string v1, "CategoryGrid"

    invoke-direct {v0, v1, v3}, Lcom/dolphin/browser/download/ui/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/am;->b:Lcom/dolphin/browser/download/ui/am;

    new-instance v0, Lcom/dolphin/browser/download/ui/am;

    const-string v1, "Category"

    invoke-direct {v0, v1, v4}, Lcom/dolphin/browser/download/ui/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    new-instance v0, Lcom/dolphin/browser/download/ui/am;

    const-string v1, "Unknow"

    invoke-direct {v0, v1, v5}, Lcom/dolphin/browser/download/ui/am;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dolphin/browser/download/ui/am;->d:Lcom/dolphin/browser/download/ui/am;

    .line 1116
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dolphin/browser/download/ui/am;

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->a:Lcom/dolphin/browser/download/ui/am;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->b:Lcom/dolphin/browser/download/ui/am;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->c:Lcom/dolphin/browser/download/ui/am;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dolphin/browser/download/ui/am;->d:Lcom/dolphin/browser/download/ui/am;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dolphin/browser/download/ui/am;->e:[Lcom/dolphin/browser/download/ui/am;

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
    .line 1116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/download/ui/am;
    .locals 1

    .prologue
    .line 1116
    const-class v0, Lcom/dolphin/browser/download/ui/am;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/download/ui/am;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/download/ui/am;
    .locals 1

    .prologue
    .line 1116
    sget-object v0, Lcom/dolphin/browser/download/ui/am;->e:[Lcom/dolphin/browser/download/ui/am;

    invoke-virtual {v0}, [Lcom/dolphin/browser/download/ui/am;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/download/ui/am;

    return-object v0
.end method
