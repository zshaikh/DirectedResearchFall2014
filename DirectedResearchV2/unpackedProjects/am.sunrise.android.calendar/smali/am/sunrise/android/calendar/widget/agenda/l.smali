.class public Lam/sunrise/android/calendar/widget/agenda/l;
.super Ljava/lang/Object;
.source "PicassoRemoteViewTarget.java"

# interfaces
.implements Lcom/b/a/ay;


# instance fields
.field private a:I

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/RemoteViews;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(ILandroid/widget/RemoteViews;I)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lam/sunrise/android/calendar/widget/agenda/l;->a:I

    .line 33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/l;->b:Ljava/lang/ref/WeakReference;

    .line 34
    iput p3, p0, Lam/sunrise/android/calendar/widget/agenda/l;->c:I

    .line 35
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 73
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->a()Lam/sunrise/android/calendar/SunriseApplication;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 76
    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/l;->a:I

    const v2, 0x102000a

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/b/a/ak;)V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 41
    if-eqz v0, :cond_0

    .line 42
    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/l;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 45
    :cond_0
    sget-object v0, Lcom/b/a/ak;->a:Lcom/b/a/ak;

    if-eq p2, v0, :cond_1

    .line 46
    invoke-direct {p0}, Lam/sunrise/android/calendar/widget/agenda/l;->a()V

    .line 48
    :cond_1
    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 53
    if-eqz v0, :cond_0

    .line 54
    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/l;->c:I

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/widget/agenda/l;->b(Landroid/widget/RemoteViews;I)V

    .line 56
    :cond_0
    return-void
.end method

.method public a(Landroid/widget/RemoteViews;I)V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lam/sunrise/android/calendar/widget/agenda/l;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    .line 61
    if-eqz v0, :cond_0

    .line 62
    iget v1, p0, Lam/sunrise/android/calendar/widget/agenda/l;->c:I

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/widget/agenda/l;->a(Landroid/widget/RemoteViews;I)V

    .line 64
    :cond_0
    return-void
.end method

.method public b(Landroid/widget/RemoteViews;I)V
    .locals 0

    .prologue
    .line 70
    return-void
.end method
