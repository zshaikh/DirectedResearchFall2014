.class public Lam/sunrise/android/calendar/ui/mainview/a/v;
.super Ljava/lang/Object;
.source "ScheduleViewRangeOccurrencesLoaderTask.java"


# instance fields
.field private a:Landroid/content/ContentResolver;

.field private b:Ljava/util/Calendar;

.field private c:Ljava/util/Calendar;

.field private d:Lam/sunrise/android/calendar/ui/mainview/a/x;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lam/sunrise/android/calendar/ui/mainview/a/w;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lam/sunrise/android/calendar/ui/mainview/a/x;->a:Lam/sunrise/android/calendar/ui/mainview/a/x;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->d:Lam/sunrise/android/calendar/ui/mainview/a/x;

    .line 73
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->a:Landroid/content/ContentResolver;

    .line 74
    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->b:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->c:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/mainview/a/v;)Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->a:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->e:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/mainview/a/v;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->f:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public a(Lam/sunrise/android/calendar/ui/mainview/a/x;)Lam/sunrise/android/calendar/ui/mainview/a/v;
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->d:Lam/sunrise/android/calendar/ui/mainview/a/x;

    .line 88
    return-object p0
.end method

.method public a(Ljava/util/Calendar;)Lam/sunrise/android/calendar/ui/mainview/a/v;
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->b:Ljava/util/Calendar;

    .line 78
    return-object p0
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/w;Ljava/lang/Object;)Lam/sunrise/android/calendar/ui/mainview/a/z;
    .locals 2

    .prologue
    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->e:Ljava/lang/ref/WeakReference;

    .line 93
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->f:Ljava/lang/Object;

    .line 97
    sget-object v0, Lam/sunrise/android/calendar/ui/mainview/a/s;->a:[I

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->d:Lam/sunrise/android/calendar/ui/mainview/a/x;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/x;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 109
    const/4 v0, 0x0

    .line 114
    :goto_0
    return-object v0

    .line 99
    :pswitch_0
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/y;

    new-instance v1, Lam/sunrise/android/calendar/ui/mainview/a/aa;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/mainview/a/aa;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/v;)V

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/y;-><init>(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 104
    :pswitch_1
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/a/y;

    new-instance v1, Lam/sunrise/android/calendar/ui/mainview/a/t;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/mainview/a/t;-><init>(Lam/sunrise/android/calendar/ui/mainview/a/v;)V

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/y;-><init>(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(Ljava/util/Calendar;)Lam/sunrise/android/calendar/ui/mainview/a/v;
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/mainview/a/v;->c:Ljava/util/Calendar;

    .line 83
    return-object p0
.end method
