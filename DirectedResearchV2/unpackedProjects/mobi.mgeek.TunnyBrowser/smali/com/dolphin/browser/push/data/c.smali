.class public Lcom/dolphin/browser/push/data/c;
.super Ljava/lang/Object;
.source "DeviceComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/dolphin/browser/push/data/DeviceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/dolphin/browser/push/data/c;->a:Ljava/text/Collator;

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/push/data/DeviceInfo;Lcom/dolphin/browser/push/data/DeviceInfo;)I
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 20
    iget-boolean v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_1

    move v0, v1

    .line 21
    :goto_0
    iget-boolean v3, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v3, :cond_2

    .line 23
    :goto_1
    iget-wide v2, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->g:J

    .line 24
    iget-wide v4, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->g:J

    .line 26
    iget-object v6, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 27
    iget-object v7, p2, Lcom/dolphin/browser/push/data/DeviceInfo;->a:Ljava/lang/String;

    .line 31
    sub-int/2addr v0, v1

    .line 32
    if-nez v0, :cond_0

    .line 33
    iget-boolean v0, p1, Lcom/dolphin/browser/push/data/DeviceInfo;->d:Z

    if-eqz v0, :cond_3

    .line 34
    iget-object v0, p0, Lcom/dolphin/browser/push/data/c;->a:Ljava/text/Collator;

    invoke-virtual {v0, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 39
    :cond_0
    :goto_2
    return v0

    :cond_1
    move v0, v2

    .line 20
    goto :goto_0

    :cond_2
    move v1, v2

    .line 21
    goto :goto_1

    .line 36
    :cond_3
    sub-long v0, v4, v2

    long-to-int v0, v0

    goto :goto_2
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 8
    check-cast p1, Lcom/dolphin/browser/push/data/DeviceInfo;

    check-cast p2, Lcom/dolphin/browser/push/data/DeviceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/dolphin/browser/push/data/c;->a(Lcom/dolphin/browser/push/data/DeviceInfo;Lcom/dolphin/browser/push/data/DeviceInfo;)I

    move-result v0

    return v0
.end method
