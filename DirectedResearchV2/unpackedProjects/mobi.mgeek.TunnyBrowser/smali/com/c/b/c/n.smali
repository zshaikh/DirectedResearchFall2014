.class public final enum Lcom/c/b/c/n;
.super Ljava/lang/Enum;
.source "PremiumOrderStatus.java"


# static fields
.field public static final enum a:Lcom/c/b/c/n;

.field public static final enum b:Lcom/c/b/c/n;

.field public static final enum c:Lcom/c/b/c/n;

.field public static final enum d:Lcom/c/b/c/n;

.field public static final enum e:Lcom/c/b/c/n;

.field public static final enum f:Lcom/c/b/c/n;

.field private static final synthetic h:[Lcom/c/b/c/n;


# instance fields
.field private final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    new-instance v0, Lcom/c/b/c/n;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4, v4}, Lcom/c/b/c/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/n;->a:Lcom/c/b/c/n;

    .line 36
    new-instance v0, Lcom/c/b/c/n;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v5, v5}, Lcom/c/b/c/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/n;->b:Lcom/c/b/c/n;

    .line 37
    new-instance v0, Lcom/c/b/c/n;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v6, v6}, Lcom/c/b/c/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/n;->c:Lcom/c/b/c/n;

    .line 38
    new-instance v0, Lcom/c/b/c/n;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v7, v7}, Lcom/c/b/c/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/n;->d:Lcom/c/b/c/n;

    .line 39
    new-instance v0, Lcom/c/b/c/n;

    const-string v1, "CANCELLATION_PENDING"

    invoke-direct {v0, v1, v8, v8}, Lcom/c/b/c/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/n;->e:Lcom/c/b/c/n;

    .line 40
    new-instance v0, Lcom/c/b/c/n;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/c/b/c/n;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/n;->f:Lcom/c/b/c/n;

    .line 34
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/c/b/c/n;

    sget-object v1, Lcom/c/b/c/n;->a:Lcom/c/b/c/n;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/c/n;->b:Lcom/c/b/c/n;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/n;->c:Lcom/c/b/c/n;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/n;->d:Lcom/c/b/c/n;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/n;->e:Lcom/c/b/c/n;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/c/b/c/n;->f:Lcom/c/b/c/n;

    aput-object v2, v0, v1

    sput-object v0, Lcom/c/b/c/n;->h:[Lcom/c/b/c/n;

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
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/c/b/c/n;->g:I

    .line 46
    return-void
.end method

.method public static a(I)Lcom/c/b/c/n;
    .locals 1

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 74
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 62
    :pswitch_0
    sget-object v0, Lcom/c/b/c/n;->a:Lcom/c/b/c/n;

    goto :goto_0

    .line 64
    :pswitch_1
    sget-object v0, Lcom/c/b/c/n;->b:Lcom/c/b/c/n;

    goto :goto_0

    .line 66
    :pswitch_2
    sget-object v0, Lcom/c/b/c/n;->c:Lcom/c/b/c/n;

    goto :goto_0

    .line 68
    :pswitch_3
    sget-object v0, Lcom/c/b/c/n;->d:Lcom/c/b/c/n;

    goto :goto_0

    .line 70
    :pswitch_4
    sget-object v0, Lcom/c/b/c/n;->e:Lcom/c/b/c/n;

    goto :goto_0

    .line 72
    :pswitch_5
    sget-object v0, Lcom/c/b/c/n;->f:Lcom/c/b/c/n;

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/n;
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/c/b/c/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/n;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/n;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/c/b/c/n;->h:[Lcom/c/b/c/n;

    invoke-virtual {v0}, [Lcom/c/b/c/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/n;

    return-object v0
.end method
