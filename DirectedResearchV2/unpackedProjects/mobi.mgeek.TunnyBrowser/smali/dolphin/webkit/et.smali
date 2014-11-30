.class public Ldolphin/webkit/et;
.super Landroid/app/DatePickerDialog;
.source "MyDatePickerDialog.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;


# instance fields
.field private b:Landroid/app/DatePickerDialog$OnDateSetListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V
    .locals 6

    .prologue
    .line 44
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    .line 45
    iput-object p2, p0, Ldolphin/webkit/et;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 46
    return-void
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 2

    .prologue
    .line 78
    :try_start_0
    sget-object v0, Ldolphin/webkit/et;->a:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 79
    const-class v0, Landroid/app/DatePickerDialog;

    const-string v1, "mDatePicker"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Ldolphin/webkit/et;->a:Ljava/lang/reflect/Field;

    .line 80
    sget-object v0, Ldolphin/webkit/et;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 82
    :cond_0
    sget-object v0, Ldolphin/webkit/et;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/DatePicker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/app/DatePickerDialog;->onClick(Landroid/content/DialogInterface;I)V

    .line 68
    iget-object v0, p0, Ldolphin/webkit/et;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p0}, Ldolphin/webkit/et;->getDatePicker()Landroid/widget/DatePicker;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 71
    iget-object v1, p0, Ldolphin/webkit/et;->b:Landroid/app/DatePickerDialog$OnDateSetListener;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    invoke-virtual {v0}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v1, v0, v2, v3, v4}, Landroid/app/DatePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 74
    :cond_0
    return-void
.end method
