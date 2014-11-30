.class public final enum Lcom/c/b/c/o;
.super Ljava/lang/Enum;
.source "PrivilegeLevel.java"


# static fields
.field public static final enum a:Lcom/c/b/c/o;

.field public static final enum b:Lcom/c/b/c/o;

.field public static final enum c:Lcom/c/b/c/o;

.field public static final enum d:Lcom/c/b/c/o;

.field public static final enum e:Lcom/c/b/c/o;

.field private static final synthetic g:[Lcom/c/b/c/o;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 19
    new-instance v0, Lcom/c/b/c/o;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v5, v3}, Lcom/c/b/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/o;->a:Lcom/c/b/c/o;

    .line 20
    new-instance v0, Lcom/c/b/c/o;

    const-string v1, "PREMIUM"

    invoke-direct {v0, v1, v3, v4}, Lcom/c/b/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/o;->b:Lcom/c/b/c/o;

    .line 21
    new-instance v0, Lcom/c/b/c/o;

    const-string v1, "MANAGER"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/c/b/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/o;->c:Lcom/c/b/c/o;

    .line 22
    new-instance v0, Lcom/c/b/c/o;

    const-string v1, "SUPPORT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lcom/c/b/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/o;->d:Lcom/c/b/c/o;

    .line 23
    new-instance v0, Lcom/c/b/c/o;

    const-string v1, "ADMIN"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lcom/c/b/c/o;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/o;->e:Lcom/c/b/c/o;

    .line 18
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/c/b/c/o;

    sget-object v1, Lcom/c/b/c/o;->a:Lcom/c/b/c/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/o;->b:Lcom/c/b/c/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/c/o;->c:Lcom/c/b/c/o;

    aput-object v1, v0, v6

    sget-object v1, Lcom/c/b/c/o;->d:Lcom/c/b/c/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/c/o;->e:Lcom/c/b/c/o;

    aput-object v1, v0, v7

    sput-object v0, Lcom/c/b/c/o;->g:[Lcom/c/b/c/o;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/c/b/c/o;->f:I

    .line 29
    return-void
.end method

.method public static a(I)Lcom/c/b/c/o;
    .locals 1

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 55
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 45
    :pswitch_1
    sget-object v0, Lcom/c/b/c/o;->a:Lcom/c/b/c/o;

    goto :goto_0

    .line 47
    :pswitch_2
    sget-object v0, Lcom/c/b/c/o;->b:Lcom/c/b/c/o;

    goto :goto_0

    .line 49
    :pswitch_3
    sget-object v0, Lcom/c/b/c/o;->c:Lcom/c/b/c/o;

    goto :goto_0

    .line 51
    :pswitch_4
    sget-object v0, Lcom/c/b/c/o;->d:Lcom/c/b/c/o;

    goto :goto_0

    .line 53
    :pswitch_5
    sget-object v0, Lcom/c/b/c/o;->e:Lcom/c/b/c/o;

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/o;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/c/b/c/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/o;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/o;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/c/b/c/o;->g:[Lcom/c/b/c/o;

    invoke-virtual {v0}, [Lcom/c/b/c/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/o;

    return-object v0
.end method
