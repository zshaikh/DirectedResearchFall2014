.class public abstract Lam/sunrise/android/calendar/widget/agenda/m;
.super Ljava/lang/Object;
.source "WidgetRenderer.java"


# static fields
.field private static g:Ljava/lang/Object;


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/content/res/Resources;

.field protected c:I

.field protected d:Z

.field private e:I

.field private f:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lam/sunrise/android/calendar/widget/agenda/m;->g:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->h:Ljava/util/ArrayList;

    .line 36
    iput-object p1, p0, Lam/sunrise/android/calendar/widget/agenda/m;->a:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->b:Landroid/content/res/Resources;

    .line 39
    iput p2, p0, Lam/sunrise/android/calendar/widget/agenda/m;->c:I

    .line 41
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->d:Z

    .line 43
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0c0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->e:I

    .line 44
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->b:Landroid/content/res/Resources;

    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->f:I

    .line 45
    return-void
.end method


# virtual methods
.method public abstract a()Landroid/widget/RemoteViews;
.end method

.method protected a(Lam/sunrise/android/calendar/widget/agenda/e;Landroid/widget/RemoteViews;II)V
    .locals 7

    .prologue
    .line 73
    iget-object v0, p1, Lam/sunrise/android/calendar/widget/agenda/e;->u:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lam/sunrise/android/calendar/widget/agenda/e;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 81
    :goto_0
    if-lez p3, :cond_2

    .line 82
    const-string v1, "setBackgroundColor"

    invoke-virtual {p2, p3, v1, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 87
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lam/sunrise/android/calendar/widget/agenda/e;->m:Ljava/lang/String;

    const-string v2, "ffffff"

    iget-object v3, p1, Lam/sunrise/android/calendar/widget/agenda/e;->n:Ljava/lang/String;

    iget v4, p0, Lam/sunrise/android/calendar/widget/agenda/m;->e:I

    invoke-static {v1, v2, v3, v4}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&background=false&placeholder=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 91
    new-instance v0, Lam/sunrise/android/calendar/widget/agenda/c;

    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/m;->c:I

    iget v4, p0, Lam/sunrise/android/calendar/widget/agenda/m;->e:I

    const v5, 0x7f0201a9

    move-object v2, p2

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lam/sunrise/android/calendar/widget/agenda/c;-><init>(ILandroid/widget/RemoteViews;III)V

    .line 93
    sget-object v1, Lam/sunrise/android/calendar/widget/agenda/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_0
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    .line 97
    iget-object v2, p0, Lam/sunrise/android/calendar/widget/agenda/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    return-void

    .line 75
    :cond_0
    iget-object v0, p1, Lam/sunrise/android/calendar/widget/agenda/e;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#ff"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lam/sunrise/android/calendar/widget/agenda/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->f:I

    goto :goto_0

    .line 84
    :cond_2
    const-string v0, "setAlpha"

    const/16 v1, 0x7f

    invoke-virtual {p2, p4, v0, v1}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_1

    .line 98
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public abstract a(Landroid/widget/RemoteViews;)V
.end method

.method public abstract a(Landroid/widget/RemoteViews;Ljava/util/ArrayList;Ljava/util/ArrayList;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RemoteViews;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lam/sunrise/android/calendar/widget/agenda/e;",
            ">;III)V"
        }
    .end annotation
.end method

.method b()V
    .locals 2

    .prologue
    .line 63
    sget-object v1, Lam/sunrise/android/calendar/widget/agenda/m;->g:Ljava/lang/Object;

    monitor-enter v1

    .line 64
    :try_start_0
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/m;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    monitor-exit v1

    .line 66
    return-void

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract b(Landroid/widget/RemoteViews;)V
.end method
