.class public Ldolphin/webkit/eu;
.super Landroid/app/TimePickerDialog;
.source "MyTimePickerDialog.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;


# instance fields
.field private b:Landroid/app/TimePickerDialog$OnTimeSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6

    .prologue
    .line 45
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    .line 46
    iput-object p2, p0, Ldolphin/webkit/eu;->b:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 47
    return-void
.end method

.method private a()Landroid/widget/TimePicker;
    .locals 2

    .prologue
    .line 83
    :try_start_0
    sget-object v0, Ldolphin/webkit/eu;->a:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 84
    const-class v0, Landroid/app/TimePickerDialog;

    const-string v1, "mTimePicker"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/eu;->a:Ljava/lang/reflect/Field;

    .line 85
    sget-object v0, Ldolphin/webkit/eu;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 87
    :cond_0
    sget-object v0, Ldolphin/webkit/eu;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TimePicker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/app/TimePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 70
    iget-object v0, p0, Ldolphin/webkit/eu;->b:Landroid/app/TimePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0}, Ldolphin/webkit/eu;->a()Landroid/widget/TimePicker;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/widget/TimePicker;->clearFocus()V

    .line 73
    iget-object v1, p0, Ldolphin/webkit/eu;->b:Landroid/app/TimePickerDialog$OnTimeSetListener;

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Landroid/app/TimePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 76
    :cond_0
    return-void
.end method
