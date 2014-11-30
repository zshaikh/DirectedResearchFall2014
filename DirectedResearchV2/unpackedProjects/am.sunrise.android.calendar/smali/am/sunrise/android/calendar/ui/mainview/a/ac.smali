.class public Lam/sunrise/android/calendar/ui/mainview/a/ac;
.super Ljava/lang/Object;
.source "ScheduleViewRangeOccurrencesMergeCursor.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/q;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lam/sunrise/android/calendar/ui/mainview/a/ad;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    .line 30
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 86
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 97
    :goto_0
    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/q;

    .line 91
    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 92
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 93
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 97
    goto :goto_0
.end method

.method public a(I)Lam/sunrise/android/calendar/ui/mainview/a/l;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 101
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 102
    :cond_0
    const-string v0, "WeekViewRangeOccurrencesMergeCursor"

    const-string v1, "get(%d): -- Out of Range -- count=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v1, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 118
    :goto_0
    return-object v0

    .line 108
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/q;

    .line 109
    if-lt p1, v1, :cond_2

    iget-object v5, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v1

    if-ge p1, v5, :cond_2

    .line 110
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/l;

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 115
    :cond_3
    const-string v0, "WeekViewRangeOccurrencesMergeCursor"

    const-string v1, "get(%d): -- Position Not Found -- count=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v1, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 118
    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/ad;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    .line 34
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/q;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 69
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    .line 71
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ad;->a(I)V

    .line 74
    :cond_0
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/q;Ljava/util/Calendar;)V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b()V

    .line 59
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    .line 62
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    invoke-interface {v0, p2}, Lam/sunrise/android/calendar/ui/mainview/a/ad;->a(Ljava/util/Calendar;)V

    .line 65
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 41
    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/q;

    .line 44
    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 45
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/q;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    .line 52
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ad;->a(Ljava/util/Calendar;)V

    .line 55
    :cond_2
    return-void
.end method

.method public b(Lam/sunrise/android/calendar/ui/mainview/a/q;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->b:I

    .line 80
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/ac;->c:Lam/sunrise/android/calendar/ui/mainview/a/ad;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/q;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/ad;->b(I)V

    .line 83
    :cond_0
    return-void
.end method
