.class public Lcom/dolphin/browser/bookmark/br;
.super Ljava/lang/Object;
.source "BookmarkSortedItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/dolphin/browser/bookmark/br;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/dolphin/browser/bookmark/br;->a:J

    .line 16
    iput-object p3, p0, Lcom/dolphin/browser/bookmark/br;->b:Ljava/lang/String;

    .line 17
    iput-boolean p4, p0, Lcom/dolphin/browser/bookmark/br;->c:Z

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/bookmark/br;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 26
    if-nez p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v0

    .line 30
    :cond_1
    if-ne p0, p1, :cond_2

    .line 31
    const/4 v0, 0x0

    goto :goto_0

    .line 34
    :cond_2
    iget-boolean v1, p0, Lcom/dolphin/browser/bookmark/br;->c:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/dolphin/browser/bookmark/br;->c:Z

    if-nez v1, :cond_3

    .line 35
    const/4 v0, -0x1

    goto :goto_0

    .line 36
    :cond_3
    iget-boolean v1, p0, Lcom/dolphin/browser/bookmark/br;->c:Z

    if-nez v1, :cond_4

    iget-boolean v1, p1, Lcom/dolphin/browser/bookmark/br;->c:Z

    if-nez v1, :cond_0

    .line 40
    :cond_4
    invoke-static {}, Lcom/dolphin/browser/util/bn;->a()Lcom/dolphin/browser/util/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/util/bn;->c()Ljava/util/Locale;

    move-result-object v1

    .line 41
    invoke-static {v1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    .line 42
    if-nez v0, :cond_5

    .line 43
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 45
    :cond_5
    iget-object v2, p0, Lcom/dolphin/browser/bookmark/br;->b:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/dolphin/browser/bookmark/br;->b:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 21
    iget-wide v0, p0, Lcom/dolphin/browser/bookmark/br;->a:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/dolphin/browser/bookmark/br;

    invoke-virtual {p0, p1}, Lcom/dolphin/browser/bookmark/br;->a(Lcom/dolphin/browser/bookmark/br;)I

    move-result v0

    return v0
.end method
