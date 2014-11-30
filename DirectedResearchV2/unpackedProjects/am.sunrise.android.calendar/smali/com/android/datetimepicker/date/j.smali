.class public Lcom/android/datetimepicker/date/j;
.super Ljava/lang/Object;
.source "MonthAdapter.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field private d:Ljava/util/Calendar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/datetimepicker/date/j;->a(J)V

    .line 59
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/datetimepicker/date/j;->a(III)V

    .line 73
    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/datetimepicker/date/j;->a(J)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->a:I

    .line 67
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->b:I

    .line 68
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->c:I

    .line 69
    return-void
.end method

.method private a(J)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->d:Ljava/util/Calendar;

    if-nez v0, :cond_0

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/datetimepicker/date/j;->d:Ljava/util/Calendar;

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->d:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 100
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->d:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->b:I

    .line 101
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->d:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->a:I

    .line 102
    iget-object v0, p0, Lcom/android/datetimepicker/date/j;->d:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/android/datetimepicker/date/j;->c:I

    .line 103
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0

    .prologue
    .line 82
    iput p1, p0, Lcom/android/datetimepicker/date/j;->a:I

    .line 83
    iput p2, p0, Lcom/android/datetimepicker/date/j;->b:I

    .line 84
    iput p3, p0, Lcom/android/datetimepicker/date/j;->c:I

    .line 85
    return-void
.end method

.method public a(Lcom/android/datetimepicker/date/j;)V
    .locals 1

    .prologue
    .line 76
    iget v0, p1, Lcom/android/datetimepicker/date/j;->a:I

    iput v0, p0, Lcom/android/datetimepicker/date/j;->a:I

    .line 77
    iget v0, p1, Lcom/android/datetimepicker/date/j;->b:I

    iput v0, p0, Lcom/android/datetimepicker/date/j;->b:I

    .line 78
    iget v0, p1, Lcom/android/datetimepicker/date/j;->c:I

    iput v0, p0, Lcom/android/datetimepicker/date/j;->c:I

    .line 79
    return-void
.end method
