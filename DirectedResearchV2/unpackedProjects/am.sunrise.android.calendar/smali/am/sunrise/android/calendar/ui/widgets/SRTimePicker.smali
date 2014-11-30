.class public Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;
.super Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;
.source "SRTimePicker.java"


# instance fields
.field private a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->b()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->b()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->b()V

    .line 34
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 59
    const v0, 0x7f0b016a

    invoke-virtual {p0, v0}, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    iput-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    .line 61
    const/16 v0, 0xc

    .line 63
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v2, v1}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMinValue(I)V

    .line 64
    iget-object v2, p0, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setMaxValue(I)V

    .line 66
    new-array v3, v0, [Ljava/lang/String;

    move v0, v1

    move v2, v1

    .line 68
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 69
    const-string v4, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 70
    add-int/lit8 v2, v2, 0x5

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    invoke-virtual {v0, v3}, Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 74
    return-void
.end method


# virtual methods
.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 51
    iget-object v1, p0, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    if-eqz v1, :cond_0

    .line 52
    mul-int/lit8 v0, v0, 0x5

    .line 55
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lam/sunrise/android/calendar/ui/widgets/SRTimePicker;->a:Lam/sunrise/android/calendar/ui/widgets/NewNumberPicker;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    div-int/lit8 v0, v0, 0x5

    .line 41
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 44
    :cond_0
    invoke-super {p0, p1}, Lam/sunrise/android/calendar/ui/widgets/NewTimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 45
    return-void
.end method
