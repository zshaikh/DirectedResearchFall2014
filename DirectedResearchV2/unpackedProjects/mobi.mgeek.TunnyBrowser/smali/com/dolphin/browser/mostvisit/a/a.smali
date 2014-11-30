.class public Lcom/dolphin/browser/mostvisit/a/a;
.super Ljava/lang/Object;
.source "FrencencyInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lcom/dolphin/browser/mostvisit/a/a;->a:I

    .line 11
    iput-object p2, p0, Lcom/dolphin/browser/mostvisit/a/a;->b:Ljava/lang/String;

    .line 12
    iput p3, p0, Lcom/dolphin/browser/mostvisit/a/a;->c:I

    .line 13
    iput p4, p0, Lcom/dolphin/browser/mostvisit/a/a;->d:I

    .line 14
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/dolphin/browser/mostvisit/a/a;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/dolphin/browser/mostvisit/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/dolphin/browser/mostvisit/a/a;->c:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/dolphin/browser/mostvisit/a/a;->d:I

    return v0
.end method
