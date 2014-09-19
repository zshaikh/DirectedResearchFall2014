.class public final enum Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;
.super Ljava/lang/Enum;
.source "PHContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/playhaven/src/publishersdk/content/PHContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

.field public static final enum Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

.field public static final enum Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;


# instance fields
.field private android_state:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    const-string v1, "Down"

    const v2, 0x10100a7

    invoke-direct {v0, v1, v3, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    .line 20
    new-instance v0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    const-string v1, "Up"

    const v2, 0x101009e

    invoke-direct {v0, v1, v4, v2}, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Down:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->Up:Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "android_state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->android_state:I

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    return-object p0
.end method

.method public static values()[Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->$VALUES:[Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    invoke-virtual {v0}, [Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;

    return-object v0
.end method


# virtual methods
.method public getAndroidState()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/playhaven/src/publishersdk/content/PHContentView$ButtonState;->android_state:I

    return v0
.end method
