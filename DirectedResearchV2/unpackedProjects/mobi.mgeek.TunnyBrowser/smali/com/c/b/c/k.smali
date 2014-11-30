.class public final enum Lcom/c/b/c/k;
.super Ljava/lang/Enum;
.source "NoteSortOrder.java"


# static fields
.field public static final enum a:Lcom/c/b/c/k;

.field public static final enum b:Lcom/c/b/c/k;

.field public static final enum c:Lcom/c/b/c/k;

.field public static final enum d:Lcom/c/b/c/k;

.field public static final enum e:Lcom/c/b/c/k;

.field private static final synthetic g:[Lcom/c/b/c/k;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 18
    new-instance v0, Lcom/c/b/c/k;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v7, v3}, Lcom/c/b/c/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/k;->a:Lcom/c/b/c/k;

    .line 19
    new-instance v0, Lcom/c/b/c/k;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v3, v4}, Lcom/c/b/c/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/k;->b:Lcom/c/b/c/k;

    .line 20
    new-instance v0, Lcom/c/b/c/k;

    const-string v1, "RELEVANCE"

    invoke-direct {v0, v1, v4, v5}, Lcom/c/b/c/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/k;->c:Lcom/c/b/c/k;

    .line 21
    new-instance v0, Lcom/c/b/c/k;

    const-string v1, "UPDATE_SEQUENCE_NUMBER"

    invoke-direct {v0, v1, v5, v6}, Lcom/c/b/c/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/k;->d:Lcom/c/b/c/k;

    .line 22
    new-instance v0, Lcom/c/b/c/k;

    const-string v1, "TITLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/c/b/c/k;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/c/b/c/k;->e:Lcom/c/b/c/k;

    .line 17
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/c/b/c/k;

    sget-object v1, Lcom/c/b/c/k;->a:Lcom/c/b/c/k;

    aput-object v1, v0, v7

    sget-object v1, Lcom/c/b/c/k;->b:Lcom/c/b/c/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/c/b/c/k;->c:Lcom/c/b/c/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/c/b/c/k;->d:Lcom/c/b/c/k;

    aput-object v1, v0, v5

    sget-object v1, Lcom/c/b/c/k;->e:Lcom/c/b/c/k;

    aput-object v1, v0, v6

    sput-object v0, Lcom/c/b/c/k;->g:[Lcom/c/b/c/k;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/c/b/c/k;->f:I

    .line 28
    return-void
.end method

.method public static a(I)Lcom/c/b/c/k;
    .locals 1

    .prologue
    .line 42
    packed-switch p0, :pswitch_data_0

    .line 54
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 44
    :pswitch_0
    sget-object v0, Lcom/c/b/c/k;->a:Lcom/c/b/c/k;

    goto :goto_0

    .line 46
    :pswitch_1
    sget-object v0, Lcom/c/b/c/k;->b:Lcom/c/b/c/k;

    goto :goto_0

    .line 48
    :pswitch_2
    sget-object v0, Lcom/c/b/c/k;->c:Lcom/c/b/c/k;

    goto :goto_0

    .line 50
    :pswitch_3
    sget-object v0, Lcom/c/b/c/k;->d:Lcom/c/b/c/k;

    goto :goto_0

    .line 52
    :pswitch_4
    sget-object v0, Lcom/c/b/c/k;->e:Lcom/c/b/c/k;

    goto :goto_0

    .line 42
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/c/b/c/k;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/c/b/c/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/c/b/c/k;

    return-object v0
.end method

.method public static values()[Lcom/c/b/c/k;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/c/b/c/k;->g:[Lcom/c/b/c/k;

    invoke-virtual {v0}, [Lcom/c/b/c/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/c/b/c/k;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/c/b/c/k;->f:I

    return v0
.end method
