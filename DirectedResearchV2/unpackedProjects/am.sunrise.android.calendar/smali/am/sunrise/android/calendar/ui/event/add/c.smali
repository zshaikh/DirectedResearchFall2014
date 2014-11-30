.class public Lam/sunrise/android/calendar/ui/event/add/c;
.super Lcom/actionbarsherlock/app/SherlockFragment;
.source "AddEventFragment.java"

# interfaces
.implements Lam/sunrise/android/calendar/ui/event/c;
.implements Lam/sunrise/android/calendar/ui/event/m;
.implements Lam/sunrise/android/calendar/ui/event/p;
.implements Lam/sunrise/android/calendar/ui/event/r;
.implements Lam/sunrise/android/calendar/ui/event/y;
.implements Lam/sunrise/android/calendar/ui/locationpicker/g;


# static fields
.field private static final e:[I


# instance fields
.field private A:Landroid/view/View;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Ljava/util/Calendar;

.field private G:Ljava/util/Calendar;

.field private H:Z

.field private I:J

.field private J:J

.field private K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

.field private L:Ljava/util/TimeZone;

.field private M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

.field private N:Ljava/lang/String;

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:[Z

.field private S:Ljava/lang/String;

.field private T:Ljava/lang/String;

.field private U:Lam/sunrise/android/calendar/ui/locationpicker/f;

.field private V:Ljava/lang/Runnable;

.field private final W:Lcom/android/datetimepicker/date/e;

.field private final X:Lcom/android/datetimepicker/date/e;

.field private final Y:Lcom/android/datetimepicker/time/s;

.field private final Z:Lcom/android/datetimepicker/time/s;

.field private a:Lam/sunrise/android/calendar/ui/event/add/y;

.field private b:Lam/sunrise/android/calendar/b/e;

.field private c:Lam/sunrise/android/calendar/ui/event/add/aa;

.field private d:Landroid/content/BroadcastReceiver;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Lam/sunrise/android/calendar/ui/utils/b;

.field private m:Landroid/widget/EditText;

.field private n:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/LinearLayout;

.field private z:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lam/sunrise/android/calendar/ui/event/add/c;->e:[I

    return-void

    :array_0
    .array-data 4
        0x7f0b00c7
        0x7f0b00c8
        0x7f0b00c9
        0x7f0b00ca
        0x7f0b00cb
        0x7f0b00cc
        0x7f0b00cd
        0x7f0b00ce
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockFragment;-><init>()V

    .line 135
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/y;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/add/y;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;Lam/sunrise/android/calendar/ui/event/add/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->a:Lam/sunrise/android/calendar/ui/event/add/y;

    .line 141
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/d;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/d;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->d:Landroid/content/BroadcastReceiver;

    .line 208
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/o;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/o;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->V:Ljava/lang/Runnable;

    .line 755
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/l;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/l;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->W:Lcom/android/datetimepicker/date/e;

    .line 773
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/m;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/m;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->X:Lcom/android/datetimepicker/date/e;

    .line 824
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/n;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/n;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Y:Lcom/android/datetimepicker/time/s;

    .line 840
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/p;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/p;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Z:Lcom/android/datetimepicker/time/s;

    .line 216
    invoke-static {}, Lam/sunrise/android/calendar/b/d;->a()Lam/sunrise/android/calendar/b/e;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    .line 217
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 1051
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->x:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1052
    return-void
.end method

.method private B()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 1055
    move v0, v1

    move v2, v1

    .line 1056
    :goto_0
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 1057
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_0

    .line 1058
    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    aget-object v4, v4, v0

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1060
    :cond_0
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1061
    const/4 v2, 0x1

    goto :goto_1

    .line 1065
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->A:Landroid/view/View;

    if-eqz v2, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1066
    return-void

    :cond_2
    move v1, v3

    .line 1065
    goto :goto_2
.end method

.method private C()V
    .locals 2

    .prologue
    .line 1069
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->B:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->S:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1070
    return-void
.end method

.method private D()V
    .locals 3

    .prologue
    .line 1073
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->C:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1106
    :goto_0
    return-void

    .line 1077
    :cond_0
    :try_start_0
    new-instance v0, Lcom/android/a/b;

    invoke-direct {v0}, Lcom/android/a/b;-><init>()V

    .line 1078
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/a/b;->a(Ljava/lang/String;)V

    .line 1079
    iget v1, v0, Lcom/android/a/b;->b:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1081
    :pswitch_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->C:Landroid/widget/TextView;

    const v1, 0x7f0f00bb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Lcom/android/a/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1102
    :catch_0
    move-exception v0

    .line 1103
    invoke-virtual {v0}, Lcom/android/a/d;->printStackTrace()V

    goto :goto_0

    .line 1085
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->C:Landroid/widget/TextView;

    iget v0, v0, Lcom/android/a/b;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const v0, 0x7f0f00bd

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0f00be

    goto :goto_1

    .line 1091
    :pswitch_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->C:Landroid/widget/TextView;

    const v1, 0x7f0f00bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1095
    :pswitch_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->C:Landroid/widget/TextView;

    const v1, 0x7f0f00bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Lcom/android/a/d; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1079
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private E()V
    .locals 2

    .prologue
    .line 1207
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->F()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1208
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->U:Lam/sunrise/android/calendar/ui/locationpicker/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/locationpicker/f;->cancel(Z)Z

    .line 1209
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->U:Lam/sunrise/android/calendar/ui/locationpicker/f;

    .line 1211
    :cond_0
    return-void
.end method

.method private F()Z
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->U:Lam/sunrise/android/calendar/ui/locationpicker/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->U:Lam/sunrise/android/calendar/ui/locationpicker/f;

    invoke-virtual {v0}, Lam/sunrise/android/calendar/ui/locationpicker/f;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private G()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1280
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1281
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1282
    :cond_0
    const/4 v0, 0x0

    .line 1284
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/add/c;Lam/sunrise/android/calendar/ui/utils/b;)Lam/sunrise/android/calendar/ui/utils/b;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->l:Lam/sunrise/android/calendar/ui/utils/b;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/add/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lam/sunrise/android/calendar/ui/event/add/c;Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1015
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1016
    const v0, 0x8012

    .line 1019
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1020
    const v0, 0x801a

    .line 1023
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v0}, Lam/sunrise/android/calendar/b/d;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1027
    return-void
.end method

.method private a(Ljava/util/Calendar;Lcom/android/datetimepicker/date/e;)V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v0, 0x1

    const/4 v6, 0x7

    .line 789
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v1

    .line 790
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 791
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 792
    const/4 v3, -0x3

    invoke-virtual {v2, v5, v3}, Ljava/util/Calendar;->add(II)V

    .line 793
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v6, v3}, Ljava/util/Calendar;->add(II)V

    .line 794
    invoke-static {v2}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 795
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Ljava/util/GregorianCalendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v3

    .line 796
    invoke-virtual {v3, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    .line 797
    const/16 v1, 0xc

    invoke-virtual {v3, v5, v1}, Ljava/util/Calendar;->add(II)V

    .line 798
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    sub-int/2addr v1, v4

    invoke-virtual {v3, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 799
    invoke-static {v3}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 801
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {p2, v1, v4, v5}, Lcom/android/datetimepicker/date/b;->a(Lcom/android/datetimepicker/date/e;III)Lcom/android/datetimepicker/date/b;

    move-result-object v4

    .line 806
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v4, v1, v2}, Lcom/android/datetimepicker/date/b;->a(II)V

    .line 808
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    invoke-static {v1}, Lam/sunrise/android/calendar/c;->i(Landroid/content/Context;)I

    move-result v1

    .line 809
    if-ne v1, v6, :cond_1

    .line 812
    :goto_0
    invoke-virtual {v4, v0}, Lcom/android/datetimepicker/date/b;->b(I)V

    .line 814
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v0

    .line 815
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v1

    const-string v2, "DatePickerDialog"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 816
    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 819
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;)Landroid/support/v4/app/aa;

    .line 821
    const-string v1, "DatePickerDialog"

    invoke-virtual {v4, v0, v1}, Lcom/android/datetimepicker/date/b;->show(Landroid/support/v4/app/aa;Ljava/lang/String;)I

    .line 822
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private a(Ljava/util/Calendar;Lcom/android/datetimepicker/time/s;)V
    .locals 4

    .prologue
    .line 854
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-boolean v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->f:Z

    invoke-static {p2, v0, v1, v2}, Lcom/android/datetimepicker/time/l;->a(Lcom/android/datetimepicker/time/s;IIZ)Lcom/android/datetimepicker/time/l;

    move-result-object v0

    .line 860
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/o;->a()Landroid/support/v4/app/aa;

    move-result-object v1

    .line 861
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getChildFragmentManager()Landroid/support/v4/app/o;

    move-result-object v2

    const-string v3, "TimePickerDialog"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 862
    if-eqz v2, :cond_0

    .line 863
    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/aa;

    .line 865
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/aa;->a(Ljava/lang/String;)Landroid/support/v4/app/aa;

    .line 867
    const-string v2, "TimePickerDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/datetimepicker/time/l;->show(Landroid/support/v4/app/aa;Ljava/lang/String;)I

    .line 868
    return-void
.end method

.method private a(Z)V
    .locals 10

    .prologue
    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    const/4 v7, 0x0

    .line 658
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 659
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->E:Ljava/lang/String;

    .line 661
    new-instance v4, Lam/sunrise/android/calendar/api/models/datas/Event;

    invoke-direct {v4}, Lam/sunrise/android/calendar/api/models/datas/Event;-><init>()V

    .line 662
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->E:Ljava/lang/String;

    iput-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->title:Ljava/lang/String;

    .line 663
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 664
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;-><init>()V

    iput-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    .line 665
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    if-eqz v0, :cond_2

    .line 667
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Ljava/util/Calendar;->add(II)V

    .line 668
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 669
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->a(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->date:Ljava/lang/String;

    .line 680
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->S:Ljava/lang/String;

    iput-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->description:Ljava/lang/String;

    .line 681
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;-><init>()V

    iput-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    .line 683
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->recurrence:Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;

    new-array v1, v5, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RRULE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Event$Recurrence;->rules:[Ljava/lang/String;

    .line 686
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Z)Z

    move-result v0

    if-nez v0, :cond_4

    .line 687
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move v0, v7

    .line 688
    :goto_1
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 689
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1

    .line 690
    new-instance v2, Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    invoke-direct {v2}, Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;-><init>()V

    .line 691
    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Lam/sunrise/android/calendar/g;->a(I)Lam/sunrise/android/calendar/g;

    move-result-object v3

    invoke-virtual {v3}, Lam/sunrise/android/calendar/g;->b()J

    move-result-wide v5

    iput-wide v5, v2, Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;->minutes:J

    .line 693
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    :cond_2
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 674
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->start:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    .line 675
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    invoke-static {v2, v3}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->dateTime:Ljava/lang/String;

    .line 678
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->end:Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/DateDescriptor;->timezone:Ljava/lang/String;

    goto/16 :goto_0

    .line 696
    :cond_3
    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 697
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    iput-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->reminders:[Lam/sunrise/android/calendar/api/models/datas/Event$Reminder;

    .line 701
    :cond_4
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v0, :cond_6

    .line 702
    new-instance v0, Lam/sunrise/android/calendar/api/models/datas/Place;

    invoke-direct {v0}, Lam/sunrise/android/calendar/api/models/datas/Place;-><init>()V

    iput-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    .line 703
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->name:Ljava/lang/String;

    .line 704
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 705
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    new-instance v1, Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/datas/Place$Address;-><init>()V

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    .line 706
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->street:Ljava/lang/String;

    .line 707
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->city:Ljava/lang/String;

    .line 708
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->state:Ljava/lang/String;

    .line 709
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->address:Lam/sunrise/android/calendar/api/models/datas/Place$Address;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Address;->country:Ljava/lang/String;

    .line 711
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    cmpl-double v0, v0, v8

    if-eqz v0, :cond_6

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v0, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    cmpl-double v0, v0, v8

    if-eqz v0, :cond_6

    .line 712
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    new-instance v1, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;-><init>()V

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->geometry:Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;

    .line 713
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->geometry:Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;

    new-instance v1, Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    invoke-direct {v1}, Lam/sunrise/android/calendar/api/models/datas/Place$Location;-><init>()V

    iput-object v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    .line 714
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->geometry:Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    iput-wide v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lat:D

    .line 715
    iget-object v0, v4, Lam/sunrise/android/calendar/api/models/datas/Event;->place:Lam/sunrise/android/calendar/api/models/datas/Place;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place;->geometry:Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Geometry;->location:Lam/sunrise/android/calendar/api/models/datas/Place$Location;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    iput-wide v1, v0, Lam/sunrise/android/calendar/api/models/datas/Place$Location;->lng:D

    .line 719
    :cond_6
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/ab;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    check-cast v1, Lam/sunrise/android/calendar/ui/a;

    invoke-virtual {v1}, Lam/sunrise/android/calendar/ui/a;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    iget-object v5, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lam/sunrise/android/calendar/ui/event/add/ab;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;Ljava/lang/String;Lam/sunrise/android/calendar/api/models/datas/Event;[Lam/sunrise/android/calendar/api/models/datas/Contact;Z)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v7, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/event/add/ab;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 723
    :cond_7
    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->P:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->g()V

    return-void
.end method

.method static synthetic b(Lam/sunrise/android/calendar/ui/event/add/c;Z)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/event/add/c;->b(Z)V

    return-void
.end method

.method private b(Landroid/widget/TextView;Ljava/util/Calendar;)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v1, 0xc

    .line 1030
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->f:Z

    if-eqz v0, :cond_0

    .line 1031
    const-string v0, "%02d:%02d"

    new-array v2, v3, [Ljava/lang/Object;

    const/16 v3, 0xb

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1048
    :goto_0
    return-void

    .line 1034
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 1035
    if-nez v0, :cond_1

    move v0, v1

    .line 1038
    :cond_1
    const-string v2, "%d:%02d"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1039
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1040
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v0, 0x9

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " AM"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1043
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v0

    .line 1044
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    iget v4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->j:I

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v4, 0x21

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 1046
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1040
    :cond_2
    const-string v0, " PM"

    goto :goto_1
.end method

.method private b(Z)V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v3, 0x0

    const/16 v6, 0xd

    .line 726
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    if-eq v0, p1, :cond_0

    .line 727
    iput-boolean p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    .line 728
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    if-eqz v0, :cond_1

    .line 729
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->I:J

    .line 732
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xe10

    mul-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->J:J

    .line 736
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 737
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 739
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->p:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->s:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 751
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 753
    :cond_0
    return-void

    .line 742
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->I:J

    long-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 743
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->J:J

    long-to-int v1, v1

    invoke-virtual {v0, v6, v1}, Ljava/util/Calendar;->add(II)V

    .line 745
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->x()V

    .line 746
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->z()V

    .line 748
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 749
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/add/c;)Lam/sunrise/android/calendar/ui/event/add/aa;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->c:Lam/sunrise/android/calendar/ui/event/add/aa;

    return-object v0
.end method

.method static synthetic c(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Q:Ljava/lang/String;

    return-object p1
.end method

.method private c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1201
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->E()V

    .line 1202
    new-instance v0, Lam/sunrise/android/calendar/ui/locationpicker/f;

    invoke-direct {v0, p0, p1}, Lam/sunrise/android/calendar/ui/locationpicker/f;-><init>(Lam/sunrise/android/calendar/ui/locationpicker/g;Ljava/lang/String;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->U:Lam/sunrise/android/calendar/ui/locationpicker/f;

    .line 1203
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->U:Lam/sunrise/android/calendar/ui/locationpicker/f;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lam/sunrise/android/calendar/ui/locationpicker/f;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1204
    return-void
.end method

.method private c(Z)V
    .locals 1

    .prologue
    .line 1219
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->D:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->D:Z

    .line 1222
    :cond_0
    return-void
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->V:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    return-object p1
.end method

.method private d(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1227
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1228
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Q:Ljava/lang/String;

    .line 1229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#ff"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 1235
    :goto_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v2

    invoke-static {v2}, Lam/sunrise/android/calendar/b/a;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1236
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->P:Ljava/lang/String;

    iget v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->g:I

    invoke-static {v2, v0, p1, v3}, Lam/sunrise/android/calendar/api/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1239
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->l:Lam/sunrise/android/calendar/ui/utils/b;

    if-eqz v2, :cond_3

    .line 1240
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1277
    :cond_0
    :goto_1
    return-void

    .line 1231
    :cond_1
    const-string v0, "default"

    .line 1232
    iget v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->h:I

    goto :goto_0

    .line 1246
    :cond_2
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->l:Lam/sunrise/android/calendar/ui/utils/b;

    invoke-virtual {v2}, Lam/sunrise/android/calendar/ui/utils/b;->a()V

    .line 1247
    iput-object v4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->l:Lam/sunrise/android/calendar/ui/utils/b;

    .line 1250
    :cond_3
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->k:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->k:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1257
    :cond_4
    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->k:Ljava/lang/String;

    .line 1258
    new-instance v0, Lam/sunrise/android/calendar/ui/utils/b;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->k:Ljava/lang/String;

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    sget-object v4, Lam/sunrise/android/calendar/ui/utils/c;->a:Lam/sunrise/android/calendar/ui/utils/c;

    new-instance v5, Lam/sunrise/android/calendar/ui/event/add/q;

    invoke-direct {v5, p0}, Lam/sunrise/android/calendar/ui/event/add/q;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lam/sunrise/android/calendar/ui/utils/b;-><init>(Ljava/lang/String;Landroid/widget/TextView;Lam/sunrise/android/calendar/ui/utils/c;Lam/sunrise/android/calendar/ui/utils/d;)V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->l:Lam/sunrise/android/calendar/ui/utils/b;

    .line 1267
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->i:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1269
    invoke-static {}, Lam/sunrise/android/calendar/SunriseApplication;->b()Lcom/b/a/ae;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/b/a/ae;->a(Ljava/lang/String;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->b(Landroid/graphics/drawable/Drawable;)Lcom/b/a/as;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->l:Lam/sunrise/android/calendar/ui/utils/b;

    invoke-virtual {v0, v1}, Lcom/b/a/as;->a(Lcom/b/a/ay;)V

    goto :goto_1

    .line 1274
    :cond_5
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->i:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1275
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/event/add/c;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic e(Lam/sunrise/android/calendar/ui/event/add/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->O:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic f(Lam/sunrise/android/calendar/ui/event/add/c;)Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->n:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 336
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    sget-object v1, Lam/sunrise/android/calendar/ui/widgets/am;->d:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 337
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v2, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    .line 339
    if-nez v2, :cond_1

    .line 353
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    .line 344
    if-eqz v3, :cond_2

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 345
    :cond_2
    invoke-virtual {v2, v0}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 349
    :cond_3
    invoke-virtual {v2, v1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method static synthetic g(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->h()V

    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->W:Lcom/android/datetimepicker/date/e;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/date/e;)V

    .line 872
    return-void
.end method

.method static synthetic h(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->i()V

    return-void
.end method

.method private i()V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Y:Lcom/android/datetimepicker/time/s;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/time/s;)V

    .line 876
    return-void
.end method

.method static synthetic i(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->j()V

    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->X:Lcom/android/datetimepicker/date/e;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/date/e;)V

    .line 880
    return-void
.end method

.method static synthetic j(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->k()V

    return-void
.end method

.method private k()V
    .locals 2

    .prologue
    .line 883
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Z:Lcom/android/datetimepicker/time/s;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Ljava/util/Calendar;Lcom/android/datetimepicker/time/s;)V

    .line 884
    return-void
.end method

.method static synthetic k(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->l()V

    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 887
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->E()V

    .line 888
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/locationpicker/LocationPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 889
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-eqz v1, :cond_0

    .line 890
    const-string v1, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v2, v2, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    :cond_0
    const/16 v1, 0x7e9

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->startActivityForResult(Landroid/content/Intent;I)V

    .line 893
    return-void
.end method

.method static synthetic l(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->m()V

    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 896
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    const-class v2, Lam/sunrise/android/calendar/ui/contactpicker/ContactPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 897
    const-string v1, "am.sunrise.android.calendar.extra.CALENDAR_ID"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v1}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 899
    const-string v1, "am.sunrise.android.calendar.extra.PEOPLE"

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 901
    :cond_0
    const/16 v1, 0x7e8

    invoke-virtual {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->startActivityForResult(Landroid/content/Intent;I)V

    .line 902
    return-void
.end method

.method static synthetic m(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->n()V

    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 905
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    invoke-static {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/event/i;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    return-void
.end method

.method static synthetic n(Lam/sunrise/android/calendar/ui/event/add/c;)[Z
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    return-object v0
.end method

.method private o()V
    .locals 3

    .prologue
    .line 909
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    const/4 v2, -0x1

    invoke-static {v0, p0, v1, v2}, Lam/sunrise/android/calendar/ui/event/a;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;[ZI)V

    .line 910
    return-void
.end method

.method static synthetic o(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->o()V

    return-void
.end method

.method private p()V
    .locals 2

    .prologue
    .line 913
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->S:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/n;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method static synthetic p(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->p()V

    return-void
.end method

.method private q()V
    .locals 2

    .prologue
    .line 917
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/s;->a(Landroid/support/v4/app/i;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 918
    return-void
.end method

.method static synthetic q(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->q()V

    return-void
.end method

.method static synthetic r(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    return-object v0
.end method

.method private r()V
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->E:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 929
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->v()V

    .line 930
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->s()V

    .line 931
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->t()V

    .line 932
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->u()V

    .line 933
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->A()V

    .line 934
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->D()V

    .line 935
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->B()V

    .line 936
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->C()V

    .line 937
    return-void
.end method

.method static synthetic s(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    return-object v0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    if-nez v0, :cond_0

    .line 941
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->u:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 945
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->u:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private t()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 949
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v1

    .line 950
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    .line 951
    int-to-long v4, v1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 952
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 954
    cmp-long v1, v2, v10

    if-lez v1, :cond_1

    .line 955
    const-string v1, "+%d"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    :goto_0
    cmp-long v1, v4, v10

    if-lez v1, :cond_0

    .line 961
    const-string v1, ":%02d"

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 964
    :cond_0
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->v:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 965
    return-void

    .line 957
    :cond_1
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic t(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->v()V

    return-void
.end method

.method private u()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 968
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 969
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->w:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 979
    :goto_0
    return-void

    .line 971
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->email:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v0, v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    .line 974
    const-string v0, " +"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 977
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->w:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 972
    :cond_2
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    aget-object v0, v0, v2

    iget-object v0, v0, Lam/sunrise/android/calendar/api/models/datas/Contact;->name:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic u(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->y()V

    return-void
.end method

.method private v()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 982
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->n:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setChecked(Z)V

    .line 984
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    if-eqz v0, :cond_0

    .line 985
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->p:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 986
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->s:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :goto_0
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->w()V

    .line 993
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->x()V

    .line 994
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->y()V

    .line 995
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->z()V

    .line 996
    return-void

    .line 988
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->s:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic v(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->z()V

    return-void
.end method

.method static synthetic w(Lam/sunrise/android/calendar/ui/event/add/c;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    return-object v0
.end method

.method private w()V
    .locals 2

    .prologue
    .line 999
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->o:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 1000
    return-void
.end method

.method private x()V
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->b(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 1004
    return-void
.end method

.method static synthetic x(Lam/sunrise/android/calendar/ui/event/add/c;)V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->A()V

    return-void
.end method

.method private y()V
    .locals 2

    .prologue
    .line 1007
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->r:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 1008
    return-void
.end method

.method private z()V
    .locals 2

    .prologue
    .line 1011
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->t:Landroid/widget/TextView;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-direct {p0, v0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->b(Landroid/widget/TextView;Ljava/util/Calendar;)V

    .line 1012
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Z)V

    .line 638
    return-void
.end method

.method public a(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1122
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    aput-boolean v1, v0, p1

    .line 1123
    invoke-direct {p0, v1}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 1124
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->B()V

    .line 1125
    return-void
.end method

.method public a(Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 1144
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->addressComponents:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1145
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1147
    iget-object v4, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->addressComponents:[Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 1148
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1149
    iget-object v0, v6, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->types:[Ljava/lang/String;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1150
    iget-object v7, v6, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->types:[Ljava/lang/String;

    array-length v8, v7

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_2

    aget-object v9, v7, v0

    .line 1151
    const-string v10, "street_number"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "route"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "locality"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "administrative_area_level_1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    const-string v10, "country"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1156
    :cond_0
    invoke-virtual {v3, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1147
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1163
    :cond_3
    const-string v0, "street_number"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "route"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    const-string v0, "street_number"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v0, "route"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->b:Ljava/lang/String;

    .line 1171
    :cond_4
    const-string v0, "locality"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1172
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v0, "locality"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->c:Ljava/lang/String;

    .line 1174
    :cond_5
    const-string v0, "administrative_area_level_1"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1175
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v0, "administrative_area_level_1"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->d:Ljava/lang/String;

    .line 1177
    :cond_6
    const-string v0, "country"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1178
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v0, "country"

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$AddressComponent;->shortName:Ljava/lang/String;

    iput-object v0, v1, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->e:Ljava/lang/String;

    .line 1182
    :cond_7
    iget-object v0, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v0, v0, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    if-eqz v0, :cond_8

    .line 1183
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;->lat:D

    iput-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->f:D

    .line 1184
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iget-object v1, p1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation;->geometry:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;

    iget-object v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry;->location:Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;

    iget-wide v1, v1, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedLocation$Geometry$Location;->lng:D

    iput-wide v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->g:D

    .line 1187
    :cond_8
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->s()V

    .line 1189
    if-eqz p2, :cond_9

    iget-object v0, p2, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;->timeZoneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1190
    iget-object v0, p2, Lam/sunrise/android/calendar/ui/locationpicker/api/models/datas/DetailedTimeZone;->timeZoneId:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    .line 1191
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->t()V

    .line 1193
    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1289
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->S:Ljava/lang/String;

    .line 1290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 1291
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->C()V

    .line 1292
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1111
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    .line 1112
    iput-object p2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->O:Ljava/lang/String;

    .line 1113
    iput-object p3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->P:Ljava/lang/String;

    .line 1114
    iput-object p4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Q:Ljava/lang/String;

    .line 1115
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 1116
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->A()V

    .line 1117
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->G()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->d(Ljava/lang/String;)V

    .line 1118
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 642
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Z)V

    .line 643
    return-void
.end method

.method public b(I)V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    const/4 v1, 0x0

    aput-boolean v1, v0, p1

    .line 1130
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 1131
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->B()V

    .line 1132
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 922
    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    .line 923
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 924
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->D()V

    .line 925
    return-void
.end method

.method c()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->D:Z

    return v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->a(Z)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getSherlockActivity()Lcom/actionbarsherlock/app/SherlockFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-static {v0, p0, v1}, Lam/sunrise/android/calendar/ui/event/q;->a(Lcom/actionbarsherlock/app/SherlockFragmentActivity;Lcom/actionbarsherlock/app/SherlockFragment;[Lam/sunrise/android/calendar/api/models/datas/Contact;)V

    goto :goto_0
.end method

.method public e()V
    .locals 0

    .prologue
    .line 1137
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 1198
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 554
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 555
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getLoaderManager()Landroid/support/v4/app/ae;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lam/sunrise/android/calendar/ui/event/add/c;->a:Lam/sunrise/android/calendar/ui/event/add/y;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/ae;->a(ILandroid/os/Bundle;Landroid/support/v4/app/af;)Landroid/support/v4/a/d;

    .line 556
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, -0x1

    .line 591
    packed-switch p1, :pswitch_data_0

    .line 632
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 633
    :cond_1
    :goto_1
    return-void

    .line 593
    :pswitch_0
    if-ne v0, p2, :cond_1

    .line 594
    if-eqz p3, :cond_3

    .line 595
    const-string v0, "am.sunrise.android.calendar.extra.PEOPLE"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 596
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 597
    array-length v1, v0

    new-array v1, v1, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 598
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v2, v0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    :cond_2
    :goto_2
    invoke-direct {p0, v4}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 604
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->u()V

    goto :goto_1

    .line 601
    :cond_3
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    goto :goto_2

    .line 609
    :pswitch_1
    if-ne v0, p2, :cond_0

    .line 610
    if-eqz p3, :cond_5

    .line 611
    const-string v0, "am.sunrise.android.calendar.extras.LOCATION_REFERENCE_ID"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 613
    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Ljava/lang/String;)V

    .line 616
    :cond_4
    new-instance v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-direct {v0}, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;-><init>()V

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 617
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v1, "am.sunrise.android.calendar.extras.LOCATION_NAME"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->a:Ljava/lang/String;

    .line 618
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    const-string v1, "am.sunrise.android.calendar.extras.LOCATION_ADDRESS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;->h:Ljava/lang/String;

    .line 619
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    .line 624
    :goto_3
    invoke-direct {p0, v4}, Lam/sunrise/android/calendar/ui/event/add/c;->c(Z)V

    .line 625
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->s()V

    .line 626
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->t()V

    goto :goto_0

    .line 621
    :cond_5
    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 622
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    goto :goto_3

    .line 591
    nop

    :pswitch_data_0
    .packed-switch 0x7e8
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 579
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onAttach(Landroid/app/Activity;)V

    .line 580
    check-cast p1, Lam/sunrise/android/calendar/ui/event/add/aa;

    iput-object p1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->c:Lam/sunrise/android/calendar/ui/event/add/aa;

    .line 581
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xb

    .line 221
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 224
    const v1, 0x7f0c0057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->g:I

    .line 225
    const v1, 0x7f0a00c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->h:I

    .line 226
    const v1, 0x7f020103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->i:Landroid/graphics/drawable/Drawable;

    .line 227
    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->j:I

    .line 229
    if-eqz p1, :cond_2

    .line 230
    const-string v0, "saved_modified"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->D:Z

    .line 231
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    const-string v1, "saved_start_date"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    .line 232
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    const-string v1, "saved_end_date"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    .line 233
    const-string v0, "saved_is_all_day"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    .line 234
    const-string v0, "saved_start_time"

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->I:J

    .line 235
    const-string v0, "saved_end_time"

    invoke-virtual {p1, v0, v7, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->J:J

    .line 236
    const-string v0, "saved_location"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    .line 237
    const-string v0, "saved_timezone"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 239
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    .line 243
    :goto_0
    const-string v0, "saved_people"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 244
    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    array-length v1, v0

    new-array v1, v1, [Lam/sunrise/android/calendar/api/models/datas/Contact;

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    .line 246
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    :cond_0
    const-string v0, "saved_calendar_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    .line 249
    const-string v0, "saved_calendar_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->O:Ljava/lang/String;

    .line 250
    const-string v0, "saved_calendar_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->P:Ljava/lang/String;

    .line 251
    const-string v0, "saved_calendar_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Q:Ljava/lang/String;

    .line 252
    const-string v0, "saved_description"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->S:Ljava/lang/String;

    .line 253
    const-string v0, "saved_rrule"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    .line 302
    :goto_1
    return-void

    .line 241
    :cond_1
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    goto :goto_0

    .line 255
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.START_DATE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.START_DATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    .line 258
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "am.sunrise.android.calendar.extra.END_DATE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    .line 260
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.IS_ALL_DAY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    .line 261
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->E:Ljava/lang/String;

    .line 297
    :goto_2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    .line 299
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->O:Ljava/lang/String;

    goto :goto_1

    .line 263
    :cond_3
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "am.sunrise.android.calendar.extra.DATE_TIME"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    invoke-static {v1, v0}, Lam/sunrise/android/calendar/b/d;->c(Lam/sunrise/android/calendar/b/e;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    .line 265
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 266
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-static {v0}, Lam/sunrise/android/calendar/b/d;->c(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 267
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 268
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 269
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-static {v2, v0}, Lam/sunrise/android/calendar/b/d;->a(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 273
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 274
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 291
    :cond_4
    :goto_3
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    .line 292
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    .line 294
    iput-boolean v4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    goto :goto_2

    .line 276
    :cond_5
    const/16 v0, 0x12

    if-ge v1, v0, :cond_6

    if-gt v1, v6, :cond_7

    .line 280
    :cond_6
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    goto :goto_3

    .line 285
    :cond_7
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 286
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-virtual {v0, v3, v5}, Ljava/util/Calendar;->add(II)V

    goto :goto_3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 332
    const v0, 0x7f030051

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 585
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onDetach()V

    .line 586
    const/4 v0, 0x0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->c:Lam/sunrise/android/calendar/ui/event/add/aa;

    .line 587
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 570
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onPause()V

    .line 571
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->V:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 572
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->E()V

    .line 574
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/i;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 575
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 560
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockFragment;->onResume()V

    .line 561
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/i;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 564
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->f:Z

    .line 565
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->v()V

    .line 566
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 307
    const-string v0, "saved_modified"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->D:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 308
    const-string v0, "saved_title"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->E:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v0, "saved_start_date"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->F:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v0, "saved_end_date"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->b:Lam/sunrise/android/calendar/b/e;

    iget-object v2, p0, Lam/sunrise/android/calendar/ui/event/add/c;->G:Ljava/util/Calendar;

    invoke-static {v1, v2}, Lam/sunrise/android/calendar/b/d;->b(Lam/sunrise/android/calendar/b/e;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v0, "saved_is_all_day"

    iget-boolean v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->H:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    const-string v0, "saved_start_time"

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->I:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 313
    const-string v0, "saved_end_time"

    iget-wide v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->J:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    const-string v0, "saved_location"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->K:Lam/sunrise/android/calendar/ui/event/info/LocationInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 315
    const-string v0, "saved_timezone"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->L:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v0, "saved_people"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->M:[Lam/sunrise/android/calendar/api/models/datas/Contact;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 317
    const-string v0, "saved_calendar_id"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->N:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    const-string v0, "saved_calendar_title"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->O:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v0, "saved_calendar_type"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->P:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "saved_calendar_color"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->Q:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v0, "saved_alerts"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 322
    const-string v0, "saved_description"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->S:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v0, "saved_rrule"

    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->T:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x4

    .line 357
    const v0, 0x7f0b00b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    .line 358
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->m:Landroid/widget/EditText;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/r;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/r;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 387
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->E:Ljava/lang/String;

    invoke-direct {p0, v0}, Lam/sunrise/android/calendar/ui/event/add/c;->d(Ljava/lang/String;)V

    .line 389
    const v0, 0x7f0b00b4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->n:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    .line 390
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->n:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/s;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/s;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setOnCheckedChangeListener(Lam/sunrise/android/calendar/ui/widgets/af;)V

    .line 396
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->n:Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/t;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/t;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Lam/sunrise/android/calendar/ui/widgets/ObservableCheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v0, 0x7f0b00b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 403
    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/u;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/u;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const v1, 0x7f0b00b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->o:Landroid/widget/TextView;

    .line 410
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 411
    const v0, 0x7f0b00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->q:Landroid/widget/TextView;

    .line 412
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 413
    const v0, 0x7f0b00b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->p:Landroid/view/View;

    .line 414
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->p:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/v;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/v;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    const v0, 0x7f0b00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 422
    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/w;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/w;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    const v1, 0x7f0b00bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->r:Landroid/widget/TextView;

    .line 429
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->r:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 430
    const v0, 0x7f0b00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->t:Landroid/widget/TextView;

    .line 431
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->t:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v1

    sget-object v3, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v1, v3}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 432
    const v0, 0x7f0b00bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->s:Landroid/view/View;

    .line 433
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->s:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/x;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/x;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 440
    const v0, 0x7f0b00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 441
    const v0, 0x7f0b00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->u:Landroid/widget/TextView;

    .line 442
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->u:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 443
    const v0, 0x7f0b00c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->v:Landroid/widget/TextView;

    .line 444
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->v:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 445
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/e;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/e;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    const v0, 0x7f0b00c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 453
    const v0, 0x7f0b00c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->w:Landroid/widget/TextView;

    .line 454
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->w:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 455
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/f;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/f;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 462
    const v0, 0x7f0b00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 463
    const v0, 0x7f0b00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->x:Landroid/widget/TextView;

    .line 464
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 465
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/g;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/g;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 472
    const v0, 0x7f0b00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->y:Landroid/widget/LinearLayout;

    .line 473
    sget-object v0, Lam/sunrise/android/calendar/ui/event/add/c;->e:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    .line 475
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    move v1, v2

    .line 476
    :goto_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    .line 477
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    iget-object v4, p0, Lam/sunrise/android/calendar/ui/event/add/c;->y:Landroid/widget/LinearLayout;

    sget-object v5, Lam/sunrise/android/calendar/ui/event/add/c;->e:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v0, v1

    .line 478
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    aget-object v0, v0, v1

    const v4, 0x7f0b0066

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 479
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v3, v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v4

    sget-object v5, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v4, v5}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 481
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    aget-object v0, v0, v1

    const v4, 0x7f0b0016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 482
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->z:[Landroid/view/View;

    aget-object v0, v0, v1

    new-instance v4, Lam/sunrise/android/calendar/ui/event/add/h;

    invoke-direct {v4, p0}, Lam/sunrise/android/calendar/ui/event/add/h;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 494
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->y:Landroid/widget/LinearLayout;

    const v1, 0x7f0b00cf

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->A:Landroid/view/View;

    .line 495
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->A:Landroid/view/View;

    new-instance v1, Lam/sunrise/android/calendar/ui/event/add/i;

    invoke-direct {v1, p0}, Lam/sunrise/android/calendar/ui/event/add/i;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    const v0, 0x7f0b00d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 503
    const v0, 0x7f0b00d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->B:Landroid/widget/TextView;

    .line 504
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->B:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 505
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/j;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/j;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 512
    const v0, 0x7f0b00d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 513
    const v0, 0x7f0b00d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->C:Landroid/widget/TextView;

    .line 514
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->C:Landroid/widget/TextView;

    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v3

    sget-object v4, Lam/sunrise/android/calendar/ui/widgets/am;->e:Lam/sunrise/android/calendar/ui/widgets/am;

    invoke-static {v3, v4}, Lam/sunrise/android/calendar/ui/widgets/al;->a(Landroid/content/Context;Lam/sunrise/android/calendar/ui/widgets/am;)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 515
    new-instance v0, Lam/sunrise/android/calendar/ui/event/add/k;

    invoke-direct {v0, p0}, Lam/sunrise/android/calendar/ui/event/add/k;-><init>(Lam/sunrise/android/calendar/ui/event/add/c;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 522
    if-eqz p2, :cond_1

    .line 523
    const-string v0, "saved_alerts"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    .line 526
    :cond_1
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    invoke-static {v0}, Lam/sunrise/android/calendar/b/b;->a([Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    invoke-static {}, Lam/sunrise/android/calendar/g;->values()[Lam/sunrise/android/calendar/g;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [Z

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    .line 528
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([ZZ)V

    .line 531
    :cond_2
    invoke-virtual {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->getActivity()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {v0}, Lam/sunrise/android/calendar/c;->q(Landroid/content/Context;)Lam/sunrise/android/calendar/g;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_3

    sget-object v1, Lam/sunrise/android/calendar/g;->a:Lam/sunrise/android/calendar/g;

    if-eq v0, v1, :cond_3

    .line 533
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/event/add/c;->R:[Z

    invoke-virtual {v0}, Lam/sunrise/android/calendar/g;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 536
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 537
    const v0, 0x7f0b00b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 540
    invoke-virtual {v0, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 541
    const v0, 0x7f0b00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 544
    invoke-virtual {v0, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 545
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/event/add/c;->y:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 546
    invoke-virtual {v0, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 549
    :cond_4
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/event/add/c;->r()V

    .line 550
    return-void
.end method
