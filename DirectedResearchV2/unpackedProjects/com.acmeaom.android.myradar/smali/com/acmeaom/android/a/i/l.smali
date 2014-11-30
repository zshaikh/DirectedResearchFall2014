.class public Lcom/acmeaom/android/a/i/l;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ProGuard"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# static fields
.field private static final a:Ljava/util/ArrayList;

.field private static b:Landroid/view/View$OnTouchListener;

.field private static c:Landroid/view/MotionEvent;


# instance fields
.field private final d:Lcom/acmeaom/android/a/i/n;

.field private final e:Lcom/acmeaom/android/c/d/e;

.field private f:I

.field private g:Lcom/acmeaom/android/a/i/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/i/l;->a:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/acmeaom/android/c/d/e;Lcom/acmeaom/android/a/i/n;)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/acmeaom/android/a/i/l;->f:I

    .line 34
    invoke-static {p1}, Lcom/acmeaom/android/a/i/l;->a(Lcom/acmeaom/android/c/d/e;)V

    .line 36
    iput-object p1, p0, Lcom/acmeaom/android/a/i/l;->e:Lcom/acmeaom/android/c/d/e;

    .line 37
    iput-object p2, p0, Lcom/acmeaom/android/a/i/l;->d:Lcom/acmeaom/android/a/i/n;

    .line 39
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p1, Lcom/acmeaom/android/c/d/e;->c:Lcom/acmeaom/android/a/d/d;

    invoke-interface {v1}, Lcom/acmeaom/android/a/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 40
    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 42
    sget-object v1, Lcom/acmeaom/android/a/i/l;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v2, Lcom/acmeaom/android/a/i/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0

    .prologue
    .line 16
    sput-object p0, Lcom/acmeaom/android/a/i/l;->c:Landroid/view/MotionEvent;

    return-object p0
.end method

.method private static declared-synchronized a(Lcom/acmeaom/android/c/d/e;)V
    .locals 3

    .prologue
    .line 73
    const-class v1, Lcom/acmeaom/android/a/i/l;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/acmeaom/android/a/i/l;->b:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/acmeaom/android/a/i/m;

    invoke-direct {v0}, Lcom/acmeaom/android/a/i/m;-><init>()V

    sput-object v0, Lcom/acmeaom/android/a/i/l;->b:Landroid/view/View$OnTouchListener;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/acmeaom/android/c/d/e;->c:Lcom/acmeaom/android/a/d/d;

    sget-object v2, Lcom/acmeaom/android/a/i/l;->b:Landroid/view/View$OnTouchListener;

    invoke-interface {v0, v2}, Lcom/acmeaom/android/a/d/d;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit v1

    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/acmeaom/android/a/i/l;->a:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lcom/acmeaom/android/a/a/c/l;
    .locals 4

    .prologue
    .line 108
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 109
    sget-object v1, Lcom/acmeaom/android/a/i/l;->c:Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 110
    iget-object v1, p0, Lcom/acmeaom/android/a/i/l;->e:Lcom/acmeaom/android/c/d/e;

    invoke-virtual {v1}, Lcom/acmeaom/android/c/d/e;->h()F

    move-result v1

    .line 111
    new-instance v2, Lcom/acmeaom/android/a/a/c/l;

    iget v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    div-float/2addr v3, v1

    iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    div-float/2addr v0, v1

    invoke-direct {v2, v3, v0}, Lcom/acmeaom/android/a/a/c/l;-><init>(FF)V

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/acmeaom/android/myradar/b/a;->f(Ljava/lang/String;)V

    .line 113
    return-object v2
.end method

.method public a()Lcom/acmeaom/android/a/i/g;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/acmeaom/android/a/i/l;->g:Lcom/acmeaom/android/a/i/g;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 117
    iput p1, p0, Lcom/acmeaom/android/a/i/l;->f:I

    .line 118
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 99
    iget v0, p0, Lcom/acmeaom/android/a/i/l;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lcom/acmeaom/android/a/i/l;->d:Lcom/acmeaom/android/a/i/n;

    invoke-interface {v0, p0}, Lcom/acmeaom/android/a/i/n;->a(Ljava/lang/Object;)V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 90
    iget v0, p0, Lcom/acmeaom/android/a/i/l;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 91
    sget-object v0, Lcom/acmeaom/android/a/i/g;->a:Lcom/acmeaom/android/a/i/g;

    iput-object v0, p0, Lcom/acmeaom/android/a/i/l;->g:Lcom/acmeaom/android/a/i/g;

    .line 92
    iget-object v0, p0, Lcom/acmeaom/android/a/i/l;->d:Lcom/acmeaom/android/a/i/n;

    invoke-interface {v0, p0}, Lcom/acmeaom/android/a/i/n;->a(Ljava/lang/Object;)V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/acmeaom/android/a/i/l;->g:Lcom/acmeaom/android/a/i/g;

    .line 95
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
