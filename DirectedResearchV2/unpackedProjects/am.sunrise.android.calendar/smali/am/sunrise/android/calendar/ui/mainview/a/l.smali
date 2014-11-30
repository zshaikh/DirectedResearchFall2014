.class public Lam/sunrise/android/calendar/ui/mainview/a/l;
.super Ljava/lang/Object;
.source "ScheduleViewDayDescriptor.java"


# instance fields
.field a:Landroid/database/Cursor;

.field b:I

.field public c:Ljava/util/Calendar;

.field d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/ui/widgets/schedule/ab;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 66
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 67
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->b:I

    goto :goto_0

    .line 71
    :cond_2
    if-gez p1, :cond_3

    .line 72
    const/4 v1, -0x1

    iput v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->b:I

    goto :goto_0

    .line 76
    :cond_3
    iput p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->b:I

    .line 78
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    iget v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->b:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->d:Ljava/util/ArrayList;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->b:I

    return v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c(I)J
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->d(I)Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/l;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/l;->d(I)Z

    move-result v0

    return v0
.end method
