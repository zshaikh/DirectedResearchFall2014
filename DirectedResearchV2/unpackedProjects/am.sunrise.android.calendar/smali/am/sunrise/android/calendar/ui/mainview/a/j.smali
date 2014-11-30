.class public Lam/sunrise/android/calendar/ui/mainview/a/j;
.super Ljava/lang/Object;
.source "RangeOccurrencesMergeCursor.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:I

.field private c:Lam/sunrise/android/calendar/ui/mainview/a/k;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 88
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 99
    :goto_0
    return v0

    .line 92
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/b;

    .line 93
    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    if-eqz v3, :cond_1

    .line 94
    iget-object v1, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 95
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 99
    goto :goto_0
.end method

.method public a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 103
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 104
    :cond_0
    const-string v0, "RangeOccurrencesMergeCursor"

    const-string v1, "get(%d): -- Out of Range -- count=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v1, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 120
    :goto_0
    return-object v0

    .line 110
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/b;

    .line 111
    if-lt p1, v1, :cond_2

    iget-object v5, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v5, v1

    if-ge p1, v5, :cond_2

    .line 112
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/a;

    goto :goto_0

    .line 114
    :cond_2
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    .line 117
    :cond_3
    const-string v0, "RangeOccurrencesMergeCursor"

    const-string v1, "get(%d): -- Position Not Found -- count=%d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-static {v0, v1, v4}, Lam/sunrise/android/calendar/b/i;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v3

    .line 120
    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/b;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 71
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    .line 73
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/k;->b(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/b;Ljava/util/Calendar;ZI)V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->b()V

    .line 61
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    invoke-interface {v0, p2, p3, p4}, Lam/sunrise/android/calendar/ui/mainview/a/k;->a(Ljava/util/Calendar;ZI)V

    .line 67
    :cond_0
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/k;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    .line 35
    return-void
.end method

.method public b(I)I
    .locals 5

    .prologue
    const/4 v2, -0x1

    .line 124
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v2

    .line 136
    :goto_0
    return v0

    .line 128
    :cond_1
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/b;

    .line 130
    if-lt p1, v1, :cond_2

    iget-object v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v1

    if-ge p1, v4, :cond_2

    .line 131
    sub-int v0, p1, v1

    goto :goto_0

    .line 133
    :cond_2
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 136
    goto :goto_0
.end method

.method public b()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 42
    iget v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    .line 44
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/mainview/a/b;

    .line 45
    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 46
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/b;->a:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iput v4, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    .line 53
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    if-eqz v0, :cond_2

    .line 54
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0, v1, v4, v2}, Lam/sunrise/android/calendar/ui/mainview/a/k;->a(Ljava/util/Calendar;ZI)V

    .line 56
    :cond_2
    return-void
.end method

.method public b(Lam/sunrise/android/calendar/ui/mainview/a/b;)V
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->b:I

    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/j;->c:Lam/sunrise/android/calendar/ui/mainview/a/k;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/a/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-interface {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/k;->c(I)V

    .line 85
    :cond_0
    return-void
.end method
