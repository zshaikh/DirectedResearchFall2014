.class public Lam/sunrise/android/calendar/ui/widgets/agenda/f;
.super Landroid/widget/BaseAdapter;
.source "AgendaViewAdapter.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/mainview/a/k;
.implements Lse/emilsjolander/stickylistheaders/i;


# instance fields
.field private A:I

.field private B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

.field private C:Lam/sunrise/android/calendar/ui/widgets/agenda/c;

.field private D:Lam/sunrise/android/calendar/ui/widgets/agenda/d;

.field private E:I

.field private F:I

.field private G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

.field private H:Ljava/util/Calendar;

.field private I:Lam/sunrise/android/calendar/ui/mainview/a/j;

.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field o:I

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field private x:Landroid/content/Context;

.field private y:Landroid/view/LayoutInflater;

.field private z:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a:I

    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->x:Landroid/content/Context;

    .line 99
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->y:Landroid/view/LayoutInflater;

    .line 101
    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->z:Ljava/text/DateFormat;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->A:I

    .line 105
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    .line 107
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->H:Ljava/util/Calendar;

    .line 108
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->H:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 109
    return-void
.end method

.method private static final a(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 4

    .prologue
    .line 411
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)Lam/sunrise/android/calendar/ui/widgets/agenda/c;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->C:Lam/sunrise/android/calendar/ui/widgets/agenda/c;

    return-object v0
.end method

.method private a(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const v2, 0x7f0b0016

    .line 800
    if-nez p2, :cond_0

    .line 801
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->x:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;-><init>(Landroid/content/Context;)V

    .line 802
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/j;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/j;-><init>()V

    .line 803
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v0

    .line 808
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v3

    .line 809
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->g()Z

    .line 811
    invoke-direct {p0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/mainview/k;Lam/sunrise/android/calendar/ui/mainview/a/a;)V

    move-object v0, v1

    .line 813
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    .line 815
    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->setEvent(Lam/sunrise/android/calendar/ui/mainview/k;)V

    .line 817
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a()V

    .line 823
    :goto_1
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b(Z)V

    .line 825
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/g;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 835
    return-object v1

    .line 805
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/j;

    move-object v2, v0

    move-object v1, p2

    goto :goto_0

    .line 820
    :cond_1
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b()V

    goto :goto_1
.end method

.method private a(Lam/sunrise/android/calendar/ui/mainview/k;Lam/sunrise/android/calendar/ui/mainview/a/a;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    const-wide/16 v8, 0x3e8

    .line 1004
    const/4 v0, 0x1

    iput-boolean v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->w:Z

    .line 1005
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->x:Ljava/util/Calendar;

    .line 1007
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->d:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b(I)Z

    move-result v0

    iput-boolean v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->d:Z

    .line 1008
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->s:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->r:Ljava/lang/String;

    .line 1010
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->e:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d(I)J

    move-result-wide v3

    mul-long/2addr v3, v8

    .line 1011
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->f:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d(I)J

    move-result-wide v5

    mul-long/2addr v5, v8

    .line 1013
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    .line 1014
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->e:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1016
    const-wide/16 v3, 0x0

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    .line 1017
    const/4 v0, 0x0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    .line 1023
    :goto_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->a:Ljava/lang/String;

    .line 1024
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->b:Ljava/lang/String;

    .line 1025
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->c:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->c:Ljava/lang/String;

    .line 1027
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    const-string v0, "default"

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->c:Ljava/lang/String;

    .line 1031
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->n:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->m:Ljava/lang/String;

    .line 1033
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->l:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1035
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->m:Ljava/lang/String;

    const-string v4, "birthday"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {v3}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 1036
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 1037
    aget-object v4, v3, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    aget-object v4, v3, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2

    .line 1044
    :goto_2
    if-ne v0, v2, :cond_3

    .line 1045
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->g:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    .line 1046
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->h:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->h:[Ljava/lang/String;

    .line 1047
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->i:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->i:[Ljava/lang/String;

    .line 1048
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->j:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->j:[Ljava/lang/String;

    .line 1049
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->k:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->k:[Ljava/lang/String;

    .line 1058
    :goto_3
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->m:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->l:Ljava/lang/String;

    .line 1059
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->o:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->n:Ljava/lang/String;

    .line 1061
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->p:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b(I)Z

    move-result v0

    iput-boolean v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->o:Z

    .line 1062
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->q:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d(I)J

    move-result-wide v0

    mul-long/2addr v0, v8

    .line 1063
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->r:I

    invoke-virtual {p2, v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d(I)J

    move-result-wide v2

    mul-long/2addr v2, v8

    .line 1065
    iget-boolean v4, p1, Lam/sunrise/android/calendar/ui/mainview/k;->o:Z

    if-eqz v4, :cond_4

    .line 1066
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->p:Ljava/util/Calendar;

    .line 1067
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->q:Ljava/util/Calendar;

    .line 1073
    :goto_4
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->t:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->s:Ljava/lang/String;

    .line 1074
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->u:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->t:Ljava/lang/String;

    .line 1075
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->v:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->u:Ljava/lang/String;

    .line 1077
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->w:I

    invoke-virtual {p2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->v:Ljava/lang/String;

    .line 1078
    return-void

    .line 1019
    :cond_1
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    .line 1020
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->f:Ljava/util/Calendar;

    invoke-virtual {v0, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto/16 :goto_0

    .line 1036
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 1051
    :cond_3
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->g:I

    invoke-virtual {p2, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/k;->g:[Ljava/lang/String;

    .line 1052
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->h:I

    invoke-virtual {p2, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/k;->h:[Ljava/lang/String;

    .line 1053
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->i:I

    invoke-virtual {p2, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/k;->i:[Ljava/lang/String;

    .line 1054
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->j:I

    invoke-virtual {p2, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lam/sunrise/android/calendar/ui/mainview/k;->j:[Ljava/lang/String;

    .line 1055
    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->k:I

    invoke-virtual {p2, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->k:[Ljava/lang/String;

    goto/16 :goto_3

    .line 1069
    :cond_4
    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->p:Ljava/util/Calendar;

    .line 1070
    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->c(J)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p1, Lam/sunrise/android/calendar/ui/mainview/k;->q:Ljava/util/Calendar;

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_2
.end method

.method private a(Ljava/util/Calendar;I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 260
    move v0, v1

    :goto_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 261
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    .line 262
    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v2

    if-nez v2, :cond_2

    .line 263
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2, v1, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(II)V

    .line 264
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    :goto_1
    add-int/2addr v0, p2

    invoke-virtual {v2, v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->c(II)V

    .line 268
    :cond_0
    return-void

    :cond_1
    move p2, v1

    .line 264
    goto :goto_1

    .line 260
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1081
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1082
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1088
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1112
    :cond_0
    :goto_0
    return-object v0

    .line 1092
    :cond_1
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1093
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1097
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 1108
    array-length v0, v1

    if-lt p1, v0, :cond_2

    move-object v0, v1

    .line 1109
    goto :goto_0

    .line 1112
    :cond_2
    invoke-static {v1, p1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)Lam/sunrise/android/calendar/ui/mainview/a/j;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    return-object v0
.end method

.method private b(Ljava/util/Calendar;I)Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 888
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 920
    :goto_0
    return-object v0

    .line 892
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 894
    packed-switch p2, :pswitch_data_0

    move-object v1, v2

    .line 913
    :goto_2
    if-eqz v1, :cond_2

    .line 914
    invoke-virtual {v1}, Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;->getDate()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {v3, p1}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    .line 915
    goto :goto_0

    .line 896
    :pswitch_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    aget-object v1, v1, v0

    iget-object v1, v1, Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;->forecast:Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;

    iget-object v1, v1, Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;->morning:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    goto :goto_2

    .line 900
    :pswitch_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    aget-object v1, v1, v0

    iget-object v1, v1, Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;->forecast:Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;

    iget-object v1, v1, Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;->afternoon:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    goto :goto_2

    .line 904
    :pswitch_2
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    aget-object v1, v1, v0

    iget-object v1, v1, Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;->forecast:Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;

    iget-object v1, v1, Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast$Forecast;->evening:Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    goto :goto_2

    .line 892
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 920
    goto :goto_0

    .line 894
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private b(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const v2, 0x7f0b0016

    .line 840
    if-nez p2, :cond_0

    .line 841
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->x:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;-><init>(Landroid/content/Context;)V

    .line 842
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/j;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/j;-><init>()V

    .line 843
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    move-object v2, v0

    .line 848
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v3

    .line 850
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 851
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/j;->a()V

    .line 852
    iget-object v0, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, v2, Lam/sunrise/android/calendar/ui/widgets/agenda/j;->x:Ljava/util/Calendar;

    move-object v0, v1

    .line 853
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->setEvent(Lam/sunrise/android/calendar/ui/mainview/k;)V

    .line 884
    :goto_1
    return-object v1

    .line 845
    :cond_0
    invoke-virtual {p2, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/j;

    move-object v2, v0

    move-object v1, p2

    goto :goto_0

    .line 857
    :cond_1
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->g()Z

    .line 859
    invoke-direct {p0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/mainview/k;Lam/sunrise/android/calendar/ui/mainview/a/a;)V

    .line 861
    const/4 v0, 0x1

    iput-boolean v0, v2, Lam/sunrise/android/calendar/ui/widgets/agenda/j;->w:Z

    move-object v0, v1

    .line 863
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    .line 864
    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->setEvent(Lam/sunrise/android/calendar/ui/mainview/k;)V

    .line 866
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 867
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->a()V

    .line 872
    :goto_2
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b(Z)V

    .line 874
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/h;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/h;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 869
    :cond_2
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b()V

    goto :goto_2
.end method

.method private b(II)V
    .locals 3

    .prologue
    .line 271
    iput p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->E:I

    .line 272
    iput p2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    .line 274
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->D:Lam/sunrise/android/calendar/ui/widgets/agenda/d;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->D:Lam/sunrise/android/calendar/ui/widgets/agenda/d;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->E:I

    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    invoke-interface {v0, v1, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/d;->a(II)V

    .line 278
    :cond_0
    return-void
.end method

.method private c(ILandroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    .line 924
    if-nez p2, :cond_1

    .line 925
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->x:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;-><init>(Landroid/content/Context;)V

    .line 928
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    move-object v0, v1

    .line 930
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    .line 932
    iget v3, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    packed-switch v3, :pswitch_data_0

    .line 950
    :goto_1
    iget-object v3, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    iget v4, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    invoke-direct {p0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b(Ljava/util/Calendar;I)Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;

    move-result-object v3

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->setWeatherForecast(Lam/sunrise/android/calendar/weather/models/datas/ForecastDescriptor;)V

    .line 953
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 954
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a()V

    .line 959
    :goto_2
    return-object v1

    .line 934
    :pswitch_0
    iget-object v3, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Ljava/util/Calendar;Lam/sunrise/android/calendar/ui/widgets/agenda/v;)V

    goto :goto_1

    .line 938
    :pswitch_1
    iget-object v3, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Ljava/util/Calendar;Lam/sunrise/android/calendar/ui/widgets/agenda/v;)V

    goto :goto_1

    .line 942
    :pswitch_2
    iget-object v3, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/agenda/v;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/v;

    invoke-virtual {v0, v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->a(Ljava/util/Calendar;Lam/sunrise/android/calendar/ui/widgets/agenda/v;)V

    goto :goto_1

    .line 956
    :cond_0
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/t;->b()V

    goto :goto_2

    :cond_1
    move-object v1, p2

    goto :goto_0

    .line 932
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d(ILandroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    .line 963
    if-nez p2, :cond_2

    .line 964
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->x:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;-><init>(Landroid/content/Context;)V

    .line 967
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    .line 968
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->g()Z

    .line 970
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 973
    :cond_0
    new-instance v0, Lam/sunrise/android/calendar/ui/mainview/k;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/mainview/k;-><init>()V

    .line 974
    invoke-direct {p0, v0, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Lam/sunrise/android/calendar/ui/mainview/k;Lam/sunrise/android/calendar/ui/mainview/a/a;)V

    .line 975
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 978
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/l;

    .line 979
    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->setBirthdays(Ljava/util/ArrayList;)V

    .line 981
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 982
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->a()V

    .line 987
    :goto_1
    const v0, 0x7f0b0016

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 989
    new-instance v0, Lam/sunrise/android/calendar/ui/widgets/agenda/i;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/i;-><init>(Lam/sunrise/android/calendar/ui/widgets/agenda/f;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1000
    return-object v1

    .line 984
    :cond_1
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/l;->b()V

    goto :goto_1

    :cond_2
    move-object v1, p2

    goto :goto_0
.end method

.method private e()V
    .locals 15

    .prologue
    const/4 v6, 0x2

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 421
    iput v7, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    .line 426
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 428
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    invoke-direct {p0, v1, v7}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b(II)V

    goto :goto_0

    .line 434
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 435
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 436
    invoke-direct {p0, v6, v7}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b(II)V

    goto :goto_0

    :cond_3
    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    .line 447
    :goto_1
    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v8}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v8

    if-ge v0, v8, :cond_d

    .line 448
    iget-object v8, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v8, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v10

    .line 449
    iget-object v8, v10, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v8, v9}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 450
    if-eqz v4, :cond_7

    .line 452
    add-int/lit8 v0, v0, -0x1

    .line 487
    :goto_2
    if-nez v2, :cond_4

    if-eq v0, v7, :cond_4

    .line 489
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v1

    .line 490
    if-eqz v1, :cond_4

    .line 491
    invoke-virtual {v1, v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;->a(Z)V

    .line 493
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    move v2, v5

    .line 497
    :cond_4
    if-eqz v2, :cond_c

    :goto_3
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    invoke-direct {p0, v5, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b(II)V

    goto :goto_0

    .line 458
    :cond_5
    if-nez v4, :cond_6

    move v4, v5

    .line 462
    :cond_6
    iget-object v8, v10, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 464
    invoke-virtual {v10}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {v10}, Lam/sunrise/android/calendar/ui/mainview/a/a;->e()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v10}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v8

    if-nez v8, :cond_8

    move v8, v5

    .line 466
    :goto_4
    if-nez v3, :cond_9

    if-eqz v8, :cond_9

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-lez v8, :cond_9

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, v11, v12}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v8, v11, v13

    if-gez v8, :cond_9

    .line 468
    invoke-virtual {v10, v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b(Z)V

    move v3, v5

    .line 473
    :goto_5
    if-nez v2, :cond_b

    .line 474
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->e(I)Z

    move-result v8

    .line 475
    if-eqz v8, :cond_a

    .line 477
    invoke-virtual {v10, v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;->a(Z)V

    .line 478
    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    move v2, v5

    .line 447
    :cond_7
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    move v8, v1

    .line 464
    goto :goto_4

    .line 470
    :cond_9
    invoke-virtual {v10, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b(Z)V

    goto :goto_5

    .line 480
    :cond_a
    invoke-virtual {v10, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->a(Z)V

    goto :goto_6

    .line 483
    :cond_b
    invoke-virtual {v10, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->a(Z)V

    goto :goto_6

    :cond_c
    move v5, v6

    .line 497
    goto :goto_3

    :cond_d
    move v0, v7

    goto :goto_2
.end method

.method private e(I)Z
    .locals 12

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    const-wide/16 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 506
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 508
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v4, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v4

    .line 510
    if-nez v4, :cond_0

    move v0, v1

    .line 652
    :goto_0
    return v0

    .line 517
    :cond_0
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v5

    if-nez v5, :cond_a

    .line 518
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 519
    add-int/lit8 v0, p1, 0x1

    :goto_1
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 520
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v4

    .line 522
    iget-object v5, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v5, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move v0, v2

    .line 533
    goto :goto_0

    .line 526
    :cond_2
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->e()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v1

    .line 528
    goto :goto_0

    .line 519
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 535
    :cond_4
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v5

    cmp-long v0, v5, v10

    if-lez v0, :cond_5

    move v0, v2

    .line 537
    goto :goto_0

    .line 540
    :cond_5
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->g()Z

    .line 541
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->f:I

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    .line 542
    new-instance v7, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 543
    invoke-virtual {v7, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 545
    invoke-static {v7, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v5

    cmp-long v0, v5, v10

    if-lez v0, :cond_9

    .line 547
    iget-object v0, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v7, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x2

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    cmp-long v0, v4, v8

    if-lez v0, :cond_6

    .line 549
    add-int/lit8 v0, p1, 0x1

    :goto_2
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v4

    if-ge p1, v4, :cond_6

    .line 550
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v4, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v4

    .line 552
    iget-object v5, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v5, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    move v0, v2

    .line 572
    goto/16 :goto_0

    .line 556
    :cond_7
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->e()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v5

    if-nez v5, :cond_8

    .line 557
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->g()Z

    .line 559
    iget v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->f:I

    invoke-virtual {v4, v5}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d(I)J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    .line 560
    new-instance v6, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 561
    invoke-virtual {v6, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 563
    invoke-static {v7, v6}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-ltz v4, :cond_8

    move v0, v1

    .line 565
    goto/16 :goto_0

    .line 549
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    move v0, v1

    .line 576
    goto/16 :goto_0

    .line 580
    :cond_a
    iget v5, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    packed-switch v5, :pswitch_data_0

    .line 646
    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    .line 648
    goto/16 :goto_0

    .line 583
    :pswitch_0
    iget-object v4, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v4, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_b

    move v0, v2

    .line 585
    goto/16 :goto_0

    .line 589
    :cond_b
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v5

    if-ge v4, v5, :cond_c

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 590
    :cond_c
    if-eqz v0, :cond_e

    iget v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    if-eq v4, v6, :cond_e

    .line 592
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-lez v0, :cond_d

    move v0, v2

    .line 594
    goto/16 :goto_0

    :cond_d
    move v0, v1

    .line 598
    goto/16 :goto_0

    :cond_e
    move v0, v1

    .line 602
    goto/16 :goto_0

    .line 606
    :pswitch_1
    iget-object v4, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v4, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-lez v4, :cond_f

    move v0, v2

    .line 608
    goto/16 :goto_0

    .line 612
    :cond_f
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v5

    if-ge v4, v5, :cond_10

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 613
    :cond_10
    if-eqz v0, :cond_12

    iget v4, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    if-eq v4, v6, :cond_12

    .line 615
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v3

    cmp-long v0, v3, v10

    if-lez v0, :cond_11

    move v0, v2

    .line 617
    goto/16 :goto_0

    :cond_11
    move v0, v1

    .line 621
    goto/16 :goto_0

    :cond_12
    move v0, v1

    .line 625
    goto/16 :goto_0

    .line 629
    :pswitch_2
    iget-object v5, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v5, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;Ljava/util/Calendar;)J

    move-result-wide v5

    cmp-long v3, v5, v10

    if-lez v3, :cond_13

    move v0, v2

    .line 631
    goto/16 :goto_0

    .line 634
    :cond_13
    add-int/lit8 v3, p1, 0x1

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v5}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v5

    if-ge v3, v5, :cond_14

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 635
    :cond_14
    if-eqz v0, :cond_15

    iget-object v3, v4, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->e:Ljava/util/Calendar;

    invoke-static {v3, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_15
    move v0, v2

    .line 638
    goto/16 :goto_0

    :cond_16
    move v0, v1

    .line 642
    goto/16 :goto_0

    :cond_17
    move v0, v2

    .line 652
    goto/16 :goto_0

    .line 580
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private f()V
    .locals 2

    .prologue
    .line 771
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 772
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "calendar_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a:I

    .line 773
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "calendar_type"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b:I

    .line 774
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "calendar_color"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->c:I

    .line 775
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_is_all_day"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->d:I

    .line 776
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_start_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->e:I

    .line 777
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_end_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->f:I

    .line 778
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_attendee_emails"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->g:I

    .line 779
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_attendee_thumbnail_urls"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->h:I

    .line 780
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_attendee_first_names"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->i:I

    .line 781
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_attendee_last_names"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->j:I

    .line 782
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_attendee_names"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->k:I

    .line 783
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "occurrence_attendee_is_self"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->l:I

    .line 784
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_id"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->m:I

    .line 785
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_type"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->n:I

    .line 786
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_title"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->o:I

    .line 787
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_is_all_day"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->p:I

    .line 788
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_start_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->q:I

    .line 789
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_end_date"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->r:I

    .line 790
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_timezone"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->s:I

    .line 791
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_description"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->t:I

    .line 792
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_icon_overlay"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->u:I

    .line 793
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "event_icon_base_color"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->v:I

    .line 794
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const-string v1, "location_name"

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->w:I

    .line 796
    :cond_0
    return-void
.end method


# virtual methods
.method a(II)I
    .locals 5

    .prologue
    .line 324
    if-ge p2, p1, :cond_3

    .line 330
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getNonObscuredFirstPosition()I

    move-result v0

    .line 331
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 333
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 339
    :goto_1
    const/4 v1, 0x0

    .line 340
    :goto_2
    if-gt p2, p1, :cond_2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v2

    if-ge p2, v2, :cond_2

    .line 341
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2, p2}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    .line 342
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->a()I

    move-result v3

    if-lez v3, :cond_1

    .line 343
    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->a()I

    move-result v2

    add-int/2addr v1, v2

    .line 340
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 336
    :cond_0
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->A:I

    goto :goto_1

    .line 345
    :cond_1
    add-int/2addr v1, v0

    goto :goto_3

    .line 348
    :cond_2
    return v1

    :cond_3
    move v4, p2

    move p2, p1

    move p1, v4

    goto :goto_0
.end method

.method public a(I)J
    .locals 2

    .prologue
    .line 657
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 658
    :cond_0
    const-wide/16 v0, -0x1

    .line 661
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v5, 0x6

    .line 282
    if-nez p2, :cond_4

    .line 283
    new-instance v1, Lam/sunrise/android/calendar/ui/widgets/agenda/o;

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->x:Landroid/content/Context;

    invoke-direct {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;-><init>(Landroid/content/Context;)V

    .line 286
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 320
    :goto_1
    return-object v1

    .line 290
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 291
    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 292
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 293
    const/4 v0, -0x1

    invoke-virtual {v3, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 294
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v4

    .line 295
    const/4 v0, 0x1

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->add(II)V

    .line 298
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v5

    move-object v0, v1

    .line 300
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/o;

    .line 304
    iget-object v6, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-static {v2, v6}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 305
    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->c:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    .line 314
    :goto_2
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->x:Landroid/content/Context;

    iget-object v4, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    const/16 v6, 0x1a

    invoke-static {v3, v4, v5, v6}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v0, v2, v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/o;->a(Lam/sunrise/android/calendar/ui/widgets/agenda/p;Ljava/lang/String;)V

    goto :goto_1

    .line 306
    :cond_1
    iget-object v2, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-static {v4, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->d:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    goto :goto_2

    .line 308
    :cond_2
    iget-object v2, v5, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-static {v3, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 309
    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->b:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    goto :goto_2

    .line 311
    :cond_3
    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/agenda/p;->a:Lam/sunrise/android/calendar/ui/widgets/agenda/p;

    goto :goto_2

    :cond_4
    move-object v1, p2

    goto :goto_0
.end method

.method public a(Lam/sunrise/android/calendar/ui/mainview/a/j;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Lam/sunrise/android/calendar/ui/mainview/a/k;)V

    .line 141
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    .line 143
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(Lam/sunrise/android/calendar/ui/mainview/a/k;)V

    .line 145
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetChanged()V

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method a(Lam/sunrise/android/calendar/ui/widgets/agenda/c;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->C:Lam/sunrise/android/calendar/ui/widgets/agenda/c;

    .line 130
    return-void
.end method

.method a(Lam/sunrise/android/calendar/ui/widgets/agenda/d;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->D:Lam/sunrise/android/calendar/ui/widgets/agenda/d;

    .line 134
    return-void
.end method

.method public a(Ljava/util/Calendar;ZI)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 205
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->f()V

    .line 209
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 210
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetChanged()V

    .line 212
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0, v1, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(II)V

    .line 213
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0, v1, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->c(II)V

    .line 215
    if-eqz p1, :cond_0

    .line 216
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->e()V

    .line 217
    if-eqz p2, :cond_1

    .line 218
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b()V

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-direct {p0, p1, p3}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(Ljava/util/Calendar;I)V

    goto :goto_0

    .line 224
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a:I

    .line 225
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method a([Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;)V
    .locals 1

    .prologue
    .line 122
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->G:[Lam/sunrise/android/calendar/weather/models/datas/WeatherForecast;

    .line 123
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetChanged()V

    .line 126
    :cond_0
    return-void
.end method

.method a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 230
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v1

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 236
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2, v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 237
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v3

    iget-object v3, v3, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    .line 239
    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/b/d;->b(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 703
    const/4 v0, 0x0

    return v0
.end method

.method b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    iget v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 254
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0, v2, v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(II)V

    .line 255
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    iget v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->F:I

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setSelection(I)V

    goto :goto_0
.end method

.method public b(I)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->f()V

    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_2

    .line 160
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v0

    .line 161
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getNonObscuredFirstPosition()I

    move-result v2

    .line 163
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v3

    .line 165
    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 166
    if-nez v0, :cond_1

    move v0, v1

    .line 168
    :goto_0
    iget v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->A:I

    if-ne v0, v3, :cond_0

    move v0, v1

    .line 175
    :cond_0
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setBlockLayout(Z)V

    .line 176
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetChanged()V

    .line 177
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v3, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->setBlockLayout(Z)V

    .line 179
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    add-int/2addr v2, p1

    invoke-virtual {v1, v2, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->c(II)V

    .line 181
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->e()V

    .line 187
    :goto_1
    return-void

    .line 166
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 184
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a:I

    .line 185
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetInvalidated()V

    goto :goto_1
.end method

.method c()V
    .locals 4

    .prologue
    .line 352
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getListChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 353
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v1, v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->b(I)Landroid/view/View;

    move-result-object v1

    .line 354
    instance-of v2, v1, Lam/sunrise/android/calendar/ui/widgets/agenda/b;

    if-nez v2, :cond_0

    .line 355
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getFirstVisiblePosition()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    .line 356
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->a(I)V

    .line 352
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->f()V

    .line 193
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetChanged()V

    .line 195
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->e()V

    .line 201
    :goto_0
    return-void

    .line 198
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a:I

    .line 199
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public d(I)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_0

    .line 115
    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method d()V
    .locals 5

    .prologue
    .line 362
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 365
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->H:Ljava/util/Calendar;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    .line 366
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->H:Ljava/util/Calendar;

    .line 368
    if-nez v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->notifyDataSetChanged()V

    .line 408
    :cond_0
    return-void

    .line 373
    :cond_1
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->e()V

    .line 378
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->B:Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/AgendaView;->getWrappedList()Landroid/widget/ListView;

    move-result-object v2

    .line 379
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 380
    invoke-virtual {v2, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 381
    instance-of v3, v0, Lse/emilsjolander/stickylistheaders/s;

    if-eqz v3, :cond_2

    .line 382
    check-cast v0, Lse/emilsjolander/stickylistheaders/s;

    invoke-virtual {v0}, Lse/emilsjolander/stickylistheaders/s;->getItem()Landroid/view/View;

    move-result-object v0

    .line 383
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v3

    .line 384
    if-nez v3, :cond_3

    .line 379
    :cond_2
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 389
    :cond_3
    instance-of v4, v0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    if-eqz v4, :cond_4

    .line 390
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/q;

    .line 391
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->c()Z

    move-result v4

    invoke-virtual {v0, v4}, Lam/sunrise/android/calendar/ui/widgets/agenda/q;->b(Z)V

    .line 399
    :goto_2
    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v3}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 401
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a()V

    goto :goto_1

    .line 393
    :cond_4
    instance-of v4, v0, Lam/sunrise/android/calendar/ui/widgets/agenda/t;

    if-eqz v4, :cond_5

    .line 394
    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;

    goto :goto_2

    .line 396
    :cond_5
    const/4 v0, 0x0

    goto :goto_2

    .line 403
    :cond_6
    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->b()V

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 667
    :cond_0
    const/4 v0, 0x0

    .line 669
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 715
    :cond_0
    const/4 v0, 0x0

    .line 717
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 722
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v0

    if-nez v0, :cond_1

    .line 723
    :cond_0
    const-wide/16 v0, -0x1

    .line 726
    :goto_0
    return-wide v0

    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v0, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v0

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->b(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 679
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v1, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v1

    .line 680
    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->d()Z

    move-result v2

    if-nez v2, :cond_2

    .line 681
    iget v1, v1, Lam/sunrise/android/calendar/ui/mainview/a/a;->c:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 698
    :cond_0
    :goto_0
    return v0

    .line 685
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 686
    :cond_2
    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->f()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 688
    const/4 v0, 0x3

    goto :goto_0

    .line 691
    :cond_3
    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/mainview/a/a;->g()Z

    .line 693
    iget v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->d:I

    invoke-virtual {v1, v2}, Lam/sunrise/android/calendar/ui/mainview/a/a;->b(I)Z

    move-result v1

    .line 694
    if-eqz v1, :cond_0

    .line 698
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->getItemViewType(I)I

    move-result v0

    .line 734
    packed-switch v0, :pswitch_data_0

    .line 752
    const/4 v0, 0x0

    .line 757
    :goto_0
    if-eqz v0, :cond_0

    .line 758
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    if-eqz v1, :cond_1

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 759
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    invoke-virtual {v1, p1}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v1

    .line 760
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->I:Lam/sunrise/android/calendar/ui/mainview/a/j;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/mainview/a/j;->a(I)Lam/sunrise/android/calendar/ui/mainview/a/a;

    move-result-object v2

    .line 761
    iget-object v1, v1, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/mainview/a/a;->d:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a(Z)V

    .line 767
    :cond_0
    :goto_1
    return-object v0

    .line 736
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->a(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;

    goto :goto_0

    .line 740
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->b(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;

    goto :goto_0

    .line 744
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->c(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;

    goto :goto_0

    .line 748
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->d(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/agenda/k;

    goto :goto_0

    .line 763
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/agenda/k;->a(Z)V

    goto :goto_1

    .line 734
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 674
    const/4 v0, 0x4

    return v0
.end method

.method public isEnabled(I)Z
    .locals 2

    .prologue
    .line 708
    invoke-virtual {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/agenda/f;->getItemViewType(I)I

    move-result v0

    .line 709
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
