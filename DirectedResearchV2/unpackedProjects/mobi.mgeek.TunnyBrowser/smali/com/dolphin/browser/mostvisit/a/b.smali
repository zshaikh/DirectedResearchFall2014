.class public Lcom/dolphin/browser/mostvisit/a/b;
.super Ljava/lang/Object;
.source "VisitInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IJI)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/dolphin/browser/mostvisit/a/b;->a:I

    .line 12
    iput-object p2, p0, Lcom/dolphin/browser/mostvisit/a/b;->b:Ljava/lang/String;

    .line 13
    iput p3, p0, Lcom/dolphin/browser/mostvisit/a/b;->c:I

    .line 14
    iput-wide p4, p0, Lcom/dolphin/browser/mostvisit/a/b;->d:J

    .line 15
    iput p6, p0, Lcom/dolphin/browser/mostvisit/a/b;->e:I

    .line 16
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/dolphin/browser/mostvisit/a/b;->a:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/dolphin/browser/mostvisit/a/b;->c:I

    return v0
.end method

.method public c()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/dolphin/browser/mostvisit/a/b;->d:J

    return-wide v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/dolphin/browser/mostvisit/a/b;->e:I

    return v0
.end method
