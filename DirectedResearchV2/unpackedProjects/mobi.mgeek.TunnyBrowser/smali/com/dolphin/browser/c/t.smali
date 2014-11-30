.class public Lcom/dolphin/browser/c/t;
.super Lcom/dolphin/browser/c/a;
.source "SequentialCommand.java"


# instance fields
.field private a:[Lcom/dolphin/browser/c/a;


# direct methods
.method public varargs constructor <init>([Lcom/dolphin/browser/c/a;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/dolphin/browser/c/a;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/dolphin/browser/c/t;->a:[Lcom/dolphin/browser/c/a;

    .line 9
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 13
    iget-object v3, p0, Lcom/dolphin/browser/c/t;->a:[Lcom/dolphin/browser/c/a;

    .line 14
    if-eqz v3, :cond_0

    array-length v1, v3

    if-nez v1, :cond_1

    .line 21
    :cond_0
    return v0

    .line 17
    :cond_1
    const/4 v1, 0x1

    .line 18
    array-length v4, v3

    move v5, v0

    move v0, v1

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v2, v3, v1

    .line 19
    invoke-virtual {v2}, Lcom/dolphin/browser/c/a;->a()Z

    move-result v2

    and-int/2addr v2, v0

    .line 18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    goto :goto_0
.end method
