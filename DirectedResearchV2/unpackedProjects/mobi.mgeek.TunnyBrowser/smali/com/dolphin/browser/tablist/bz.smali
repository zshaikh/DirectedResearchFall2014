.class public final enum Lcom/dolphin/browser/tablist/bz;
.super Ljava/lang/Enum;
.source "TabListContainerFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dolphin/browser/tablist/bz;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/dolphin/browser/tablist/bz;

.field public static final enum b:Lcom/dolphin/browser/tablist/bz;

.field public static final enum c:Lcom/dolphin/browser/tablist/bz;

.field private static final synthetic e:[Lcom/dolphin/browser/tablist/bz;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/dolphin/browser/tablist/bz;

    const-string v1, "TYPE_CURRENT"

    invoke-direct {v0, v1, v2, v2}, Lcom/dolphin/browser/tablist/bz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/tablist/bz;->a:Lcom/dolphin/browser/tablist/bz;

    new-instance v0, Lcom/dolphin/browser/tablist/bz;

    const-string v1, "TYPE_RECENT"

    invoke-direct {v0, v1, v3, v3}, Lcom/dolphin/browser/tablist/bz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/tablist/bz;->b:Lcom/dolphin/browser/tablist/bz;

    new-instance v0, Lcom/dolphin/browser/tablist/bz;

    const-string v1, "TYPE_CLOUD"

    invoke-direct {v0, v1, v4, v4}, Lcom/dolphin/browser/tablist/bz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/dolphin/browser/tablist/bz;

    sget-object v1, Lcom/dolphin/browser/tablist/bz;->a:Lcom/dolphin/browser/tablist/bz;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dolphin/browser/tablist/bz;->b:Lcom/dolphin/browser/tablist/bz;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    aput-object v1, v0, v4

    sput-object v0, Lcom/dolphin/browser/tablist/bz;->e:[Lcom/dolphin/browser/tablist/bz;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/dolphin/browser/tablist/bz;->d:I

    .line 19
    return-void
.end method

.method public static a(I)Lcom/dolphin/browser/tablist/bz;
    .locals 1

    .prologue
    .line 23
    packed-switch p0, :pswitch_data_0

    .line 31
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->a:Lcom/dolphin/browser/tablist/bz;

    goto :goto_0

    .line 27
    :pswitch_1
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->b:Lcom/dolphin/browser/tablist/bz;

    goto :goto_0

    .line 29
    :pswitch_2
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->c:Lcom/dolphin/browser/tablist/bz;

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dolphin/browser/tablist/bz;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/dolphin/browser/tablist/bz;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/tablist/bz;

    return-object v0
.end method

.method public static values()[Lcom/dolphin/browser/tablist/bz;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/dolphin/browser/tablist/bz;->e:[Lcom/dolphin/browser/tablist/bz;

    invoke-virtual {v0}, [Lcom/dolphin/browser/tablist/bz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dolphin/browser/tablist/bz;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/dolphin/browser/tablist/bz;->d:I

    return v0
.end method
