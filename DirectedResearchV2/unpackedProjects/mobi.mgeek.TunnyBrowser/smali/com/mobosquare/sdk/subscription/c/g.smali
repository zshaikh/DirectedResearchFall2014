.class Lcom/mobosquare/sdk/subscription/c/g;
.super Lcom/mobosquare/sdk/subscription/c/h;
.source "Log.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 327
    invoke-direct {p0}, Lcom/mobosquare/sdk/subscription/c/h;-><init>()V

    .line 328
    if-nez p2, :cond_0

    .line 329
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tag"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 332
    :cond_0
    iput p1, p0, Lcom/mobosquare/sdk/subscription/c/g;->a:I

    .line 333
    iput-object p2, p0, Lcom/mobosquare/sdk/subscription/c/g;->b:Ljava/lang/String;

    .line 334
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 338
    iget v0, p0, Lcom/mobosquare/sdk/subscription/c/g;->a:I

    iget-object v1, p0, Lcom/mobosquare/sdk/subscription/c/g;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/mobosquare/sdk/subscription/c/f;->a(ILjava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void
.end method
