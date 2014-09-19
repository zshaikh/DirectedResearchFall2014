.class public Lcom/example/calender1/EventActivity;
.super Landroid/app/Activity;
.source "EventActivity.java"


# static fields
.field static final DATE_DIALOG_ID:I = 0x3e7

.field static final END_TIME_DIALOG_ID:I = 0x0

.field static final START_TIME_DIALOG_ID:I = 0x1


# instance fields
.field final c:Ljava/util/Calendar;

.field date:Ljava/util/Date;

.field dateFormat:Ljava/text/SimpleDateFormat;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private day:I

.field final db:Lcom/example/calender1/DBAdapter;

.field private endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private endTimeView:Landroid/widget/EditText;

.field private hours:I

.field private minute:I

.field private month:I

.field selectedDate:Ljava/lang/String;

.field private startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private startTimeView:Landroid/widget/EditText;

.field private tbnGoToCategoryView:Landroid/widget/Button;

.field private tvDisplayCalImage:Landroid/widget/TextView;

.field private tvDisplayDate:Landroid/widget/TextView;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/example/calender1/DBAdapter;

    invoke-direct {v0, p0}, Lcom/example/calender1/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->c:Ljava/util/Calendar;

    .line 402
    new-instance v0, Lcom/example/calender1/EventActivity$1;

    invoke-direct {v0, p0}, Lcom/example/calender1/EventActivity$1;-><init>(Lcom/example/calender1/EventActivity;)V

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 421
    new-instance v0, Lcom/example/calender1/EventActivity$2;

    invoke-direct {v0, p0}, Lcom/example/calender1/EventActivity$2;-><init>(Lcom/example/calender1/EventActivity;)V

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 434
    new-instance v0, Lcom/example/calender1/EventActivity$3;

    invoke-direct {v0, p0}, Lcom/example/calender1/EventActivity$3;-><init>(Lcom/example/calender1/EventActivity;)V

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/example/calender1/EventActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->endTimeView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/calender1/EventActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->startTimeView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/calender1/EventActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    iput p1, p0, Lcom/example/calender1/EventActivity;->year:I

    return-void
.end method

.method static synthetic access$3(Lcom/example/calender1/EventActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/example/calender1/EventActivity;->month:I

    return-void
.end method

.method static synthetic access$4(Lcom/example/calender1/EventActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/example/calender1/EventActivity;->day:I

    return-void
.end method

.method static synthetic access$5(Lcom/example/calender1/EventActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->tvDisplayDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/example/calender1/EventActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/example/calender1/EventActivity;->month:I

    return v0
.end method

.method static synthetic access$7(Lcom/example/calender1/EventActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/example/calender1/EventActivity;->day:I

    return v0
.end method

.method static synthetic access$8(Lcom/example/calender1/EventActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 50
    iget v0, p0, Lcom/example/calender1/EventActivity;->year:I

    return v0
.end method

.method static synthetic access$9(Lcom/example/calender1/EventActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->setCategories()V

    return-void
.end method

.method private addListenerOnButton()V
    .locals 7

    .prologue
    .line 250
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->tvDisplayCalImage:Landroid/widget/TextView;

    new-instance v1, Lcom/example/calender1/EventActivity$6;

    invoke-direct {v1, p0}, Lcom/example/calender1/EventActivity$6;-><init>(Lcom/example/calender1/EventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->tbnGoToCategoryView:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/EventActivity$7;

    invoke-direct {v1, p0}, Lcom/example/calender1/EventActivity$7;-><init>(Lcom/example/calender1/EventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    const v0, 0x7f090023

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 301
    .local v6, btnSave:Landroid/widget/Button;
    const v0, 0x7f090018

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 302
    .local v5, spinner2:Landroid/widget/Spinner;
    const v0, 0x7f090015

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 303
    .local v3, etTitle:Landroid/widget/EditText;
    const v0, 0x7f090024

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 304
    .local v4, etDescreption:Landroid/widget/EditText;
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 306
    .local v2, date:Landroid/widget/TextView;
    new-instance v0, Lcom/example/calender1/EventActivity$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/example/calender1/EventActivity$8;-><init>(Lcom/example/calender1/EventActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    return-void
.end method

.method private addListenerOnEndTimeButton()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->endTimeView:Landroid/widget/EditText;

    new-instance v1, Lcom/example/calender1/EventActivity$5;

    invoke-direct {v1, p0}, Lcom/example/calender1/EventActivity$5;-><init>(Lcom/example/calender1/EventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    return-void
.end method

.method private addListenerOnStartTimeButton()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->startTimeView:Landroid/widget/EditText;

    new-instance v1, Lcom/example/calender1/EventActivity$4;

    invoke-direct {v1, p0}, Lcom/example/calender1/EventActivity$4;-><init>(Lcom/example/calender1/EventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    return-void
.end method

.method private initializtion()V
    .locals 1

    .prologue
    .line 101
    const v0, 0x7f09002e

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->endTimeView:Landroid/widget/EditText;

    .line 102
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->startTimeView:Landroid/widget/EditText;

    .line 103
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->tvDisplayDate:Landroid/widget/TextView;

    .line 104
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->tvDisplayCalImage:Landroid/widget/TextView;

    .line 105
    const v0, 0x7f090031

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->tbnGoToCategoryView:Landroid/widget/Button;

    .line 107
    return-void
.end method

.method private setCategories()V
    .locals 8

    .prologue
    .line 177
    const v5, 0x7f090018

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/example/calender1/EventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 178
    .local v3, spinner2:Landroid/widget/Spinner;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .local v1, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v4, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 186
    .local v4, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v5}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 187
    iget-object v5, p0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v5}, Lcom/example/calender1/DBAdapter;->getAllCategories()Landroid/database/Cursor;

    move-result-object v0

    .line 190
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 196
    :cond_0
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 201
    :cond_1
    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    iget-object v5, p0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v5}, Lcom/example/calender1/DBAdapter;->close()V

    .line 216
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #spinner2:Landroid/widget/Spinner;
    .end local v4           #spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 203
    :catch_0
    move-exception v2

    .line 205
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/example/calender1/EventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    .line 206
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    .line 208
    const/4 v7, 0x1

    .line 205
    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 208
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    iget-object v5, p0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v5}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 211
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 212
    iget-object v6, p0, Lcom/example/calender1/EventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v6}, Lcom/example/calender1/DBAdapter;->close()V

    .line 213
    throw v5
.end method

.method private setCurrentDateOnView()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EventActivity;->year:I

    .line 233
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EventActivity;->month:I

    .line 234
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EventActivity;->day:I

    .line 235
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EventActivity;->hours:I

    .line 236
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EventActivity;->minute:I

    .line 243
    iget-object v0, p0, Lcom/example/calender1/EventActivity;->tvDisplayDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/example/calender1/EventActivity;->selectedDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/example/calender1/EventActivity;->setContentView(I)V

    .line 71
    invoke-virtual {p0}, Lcom/example/calender1/EventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectedDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/calender1/EventActivity;->selectedDate:Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->initializtion()V

    .line 75
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->setCurrentDateOnView()V

    .line 77
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->addListenerOnButton()V

    .line 78
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->addListenerOnStartTimeButton()V

    .line 79
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->addListenerOnEndTimeButton()V

    .line 81
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->setCategories()V

    .line 84
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 379
    sparse-switch p1, :sswitch_data_0

    .line 395
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 382
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/example/calender1/EventActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 383
    iget v3, p0, Lcom/example/calender1/EventActivity;->year:I

    iget v4, p0, Lcom/example/calender1/EventActivity;->month:I

    iget v5, p0, Lcom/example/calender1/EventActivity;->day:I

    move-object v1, p0

    .line 382
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 387
    :sswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/example/calender1/EventActivity;->endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 388
    iget v3, p0, Lcom/example/calender1/EventActivity;->hours:I

    iget v4, p0, Lcom/example/calender1/EventActivity;->minute:I

    move-object v1, p0

    .line 387
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 391
    :sswitch_2
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/example/calender1/EventActivity;->startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 392
    iget v3, p0, Lcom/example/calender1/EventActivity;->hours:I

    iget v4, p0, Lcom/example/calender1/EventActivity;->minute:I

    move-object v1, p0

    .line 391
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 379
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    invoke-direct {p0}, Lcom/example/calender1/EventActivity;->setCategories()V

    .line 125
    return-void
.end method
