.class public Lam/sunrise/android/calendar/ui/mainview/a/a;
.super Ljava/lang/Object;
.source "OccurrenceDescriptor.java"


# instance fields
.field a:Landroid/database/Cursor;

.field b:I

.field public c:I

.field public d:Ljava/util/Calendar;

.field public e:Ljava/util/Calendar;

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field g:Z

.field h:Z

.field private i:Z

.field private j:Z

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->k:I

    return-void
.end method

.method private e(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 127
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->b:I

    goto :goto_0

    .line 131
    :cond_2
    if-gez p1, :cond_3

    .line 132
    const/4 v1, -0x1

    iput v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->b:I

    goto :goto_0

    .line 136
    :cond_3
    iput p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->b:I

    .line 138
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

    iget v2, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->b:I

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
.method public a()I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->k:I

    return v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->k:I

    if-eq v0, p1, :cond_0

    .line 57
    iput p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->k:I

    .line 59
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 66
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->i:Z

    .line 67
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 74
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->j:Z

    .line 75
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->i:Z

    return v0
.end method

.method public b(I)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

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

.method public c(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->j:Z

    return v0
.end method

.method public d(I)J
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->f:Ljava/util/ArrayList;

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

.method public e()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->g:Z

    return v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->h:Z

    return v0
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->e(I)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 102
    iget v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->e(I)Z

    move-result v0

    return v0
.end method
