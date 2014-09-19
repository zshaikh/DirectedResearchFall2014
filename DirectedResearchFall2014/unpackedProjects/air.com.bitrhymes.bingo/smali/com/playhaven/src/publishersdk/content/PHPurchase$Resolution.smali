.class public final enum Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
.super Ljava/lang/Enum;
.source "PHPurchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHPurchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

.field public static final enum Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

.field public static final enum Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

.field public static final enum Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 40
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    const-string v1, "Buy"

    const-string v2, "buy"

    invoke-direct {v0, v1, v3, v2}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 41
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    const-string v1, "Cancel"

    const-string v2, "cancel"

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 42
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    const-string v1, "Error"

    const-string v2, "error"

    invoke-direct {v0, v1, v5, v2}, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Buy:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Cancel:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    aput-object v1, v0, v4

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->Error:Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    aput-object v1, v0, v5

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->type:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    invoke-virtual {v0}, [Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/playhaven/src/publishersdk/content/PHPurchase$Resolution;->type:Ljava/lang/String;

    return-object v0
.end method
