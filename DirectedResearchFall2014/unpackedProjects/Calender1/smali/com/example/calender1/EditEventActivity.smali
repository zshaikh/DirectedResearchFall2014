.class public Lcom/example/calender1/EditEventActivity;
.super Landroid/app/Activity;
.source "EditEventActivity.java"


# static fields
.field static final DATE_DIALOG_ID:I = 0x3e7

.field static final END_TIME_DIALOG_ID:I = 0x0

.field static final START_TIME_DIALOG_ID:I = 0x1


# instance fields
.field private btnDelete:Landroid/widget/Button;

.field final c:Ljava/util/Calendar;

.field private datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private day:I

.field final db:Lcom/example/calender1/DBAdapter;

.field private descriptionView:Landroid/widget/EditText;

.field private endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private endTimeView:Landroid/widget/EditText;

.field private eventCategory:Landroid/widget/Spinner;

.field private hours:I

.field private minute:I

.field private month:I

.field private oldDate:Ljava/lang/String;

.field private oldEndTime:Ljava/lang/String;

.field private oldEventCategoryId:I

.field private oldEventPredicalTypeId:I

.field private oldStartTime:Ljava/lang/String;

.field selectedDate:Ljava/lang/String;

.field private startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private startTimeView:Landroid/widget/EditText;

.field private tbnGoToCategoryView:Landroid/widget/Button;

.field private titleView:Landroid/widget/EditText;

.field private tvChangeDate:Landroid/widget/TextView;

.field private tvDisplayDate:Landroid/widget/TextView;

.field private year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Lcom/example/calender1/DBAdapter;

    invoke-direct {v0, p0}, Lcom/example/calender1/DBAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    .line 36
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->c:Ljava/util/Calendar;

    .line 473
    new-instance v0, Lcom/example/calender1/EditEventActivity$1;

    invoke-direct {v0, p0}, Lcom/example/calender1/EditEventActivity$1;-><init>(Lcom/example/calender1/EditEventActivity;)V

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 492
    new-instance v0, Lcom/example/calender1/EditEventActivity$2;

    invoke-direct {v0, p0}, Lcom/example/calender1/EditEventActivity$2;-><init>(Lcom/example/calender1/EditEventActivity;)V

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 505
    new-instance v0, Lcom/example/calender1/EditEventActivity$3;

    invoke-direct {v0, p0}, Lcom/example/calender1/EditEventActivity$3;-><init>(Lcom/example/calender1/EditEventActivity;)V

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/example/calender1/EditEventActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$10(Lcom/example/calender1/EditEventActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->oldStartTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$11(Lcom/example/calender1/EditEventActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->oldEndTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/example/calender1/EditEventActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput p1, p0, Lcom/example/calender1/EditEventActivity;->year:I

    return-void
.end method

.method static synthetic access$3(Lcom/example/calender1/EditEventActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/example/calender1/EditEventActivity;->month:I

    return-void
.end method

.method static synthetic access$4(Lcom/example/calender1/EditEventActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput p1, p0, Lcom/example/calender1/EditEventActivity;->day:I

    return-void
.end method

.method static synthetic access$5(Lcom/example/calender1/EditEventActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 30
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->tvDisplayDate:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6(Lcom/example/calender1/EditEventActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 52
    iget v0, p0, Lcom/example/calender1/EditEventActivity;->month:I

    return v0
.end method

.method static synthetic access$7(Lcom/example/calender1/EditEventActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 53
    iget v0, p0, Lcom/example/calender1/EditEventActivity;->day:I

    return v0
.end method

.method static synthetic access$8(Lcom/example/calender1/EditEventActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 51
    iget v0, p0, Lcom/example/calender1/EditEventActivity;->year:I

    return v0
.end method

.method static synthetic access$9(Lcom/example/calender1/EditEventActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->oldDate:Ljava/lang/String;

    return-object v0
.end method

.method private addListenerOnButton()V
    .locals 7

    .prologue
    .line 304
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->tvChangeDate:Landroid/widget/TextView;

    new-instance v1, Lcom/example/calender1/EditEventActivity$7;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditEventActivity$7;-><init>(Lcom/example/calender1/EditEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->tbnGoToCategoryView:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/EditEventActivity$8;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditEventActivity$8;-><init>(Lcom/example/calender1/EditEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    const v0, 0x7f090028

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 355
    .local v6, btnUpdate:Landroid/widget/Button;
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 356
    .local v5, spinner2:Landroid/widget/Spinner;
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 357
    .local v3, etTitle:Landroid/widget/EditText;
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 358
    .local v4, etDescreption:Landroid/widget/EditText;
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 360
    .local v2, date:Landroid/widget/TextView;
    new-instance v0, Lcom/example/calender1/EditEventActivity$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/example/calender1/EditEventActivity$9;-><init>(Lcom/example/calender1/EditEventActivity;Landroid/widget/TextView;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    return-void
.end method

.method private addListenerOnEndTimeButton()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;

    new-instance v1, Lcom/example/calender1/EditEventActivity$6;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditEventActivity$6;-><init>(Lcom/example/calender1/EditEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void
.end method

.method private addListenerOnStartTimeButton()V
    .locals 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;

    new-instance v1, Lcom/example/calender1/EditEventActivity$5;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditEventActivity$5;-><init>(Lcom/example/calender1/EditEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 204
    return-void
.end method

.method private addListernerOnDeleteButton()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->btnDelete:Landroid/widget/Button;

    new-instance v1, Lcom/example/calender1/EditEventActivity$4;

    invoke-direct {v1, p0}, Lcom/example/calender1/EditEventActivity$4;-><init>(Lcom/example/calender1/EditEventActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method private intializeObjects()V
    .locals 2

    .prologue
    .line 167
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->tbnGoToCategoryView:Landroid/widget/Button;

    .line 168
    const v0, 0x7f09001e

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;

    .line 169
    const v0, 0x7f09001d

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;

    .line 170
    const v0, 0x7f090017

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->titleView:Landroid/widget/EditText;

    .line 171
    const v0, 0x7f09001a

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->descriptionView:Landroid/widget/EditText;

    .line 172
    const v0, 0x7f090022

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->eventCategory:Landroid/widget/Spinner;

    .line 174
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->tvDisplayDate:Landroid/widget/TextView;

    .line 175
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->tvChangeDate:Landroid/widget/TextView;

    .line 176
    const v0, 0x7f090029

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->btnDelete:Landroid/widget/Button;

    .line 177
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EditEventActivity;->year:I

    .line 178
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EditEventActivity;->month:I

    .line 179
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->c:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EditEventActivity;->day:I

    .line 180
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EditEventActivity;->hours:I

    .line 181
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->c:Ljava/util/Calendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/example/calender1/EditEventActivity;->minute:I

    .line 184
    return-void
.end method

.method private setCategories()V
    .locals 7

    .prologue
    .line 233
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v1, categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x1090008

    invoke-direct {v3, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 238
    .local v3, spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->open()Lcom/example/calender1/DBAdapter;

    .line 239
    iget-object v4, p0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->getAllCategories()Landroid/database/Cursor;

    move-result-object v0

    .line 242
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 248
    :cond_0
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 253
    :cond_1
    iget-object v4, p0, Lcom/example/calender1/EditEventActivity;->eventCategory:Landroid/widget/Spinner;

    invoke-virtual {v4, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    iget-object v4, p0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->close()V

    .line 269
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #categories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #spinnerAdapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v2

    .line 258
    .local v2, ex:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    .line 259
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    .line 261
    const/4 v6, 0x1

    .line 258
    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 261
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    iget-object v4, p0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v4}, Lcom/example/calender1/DBAdapter;->close()V

    goto :goto_0

    .line 264
    .end local v2           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 265
    iget-object v5, p0, Lcom/example/calender1/EditEventActivity;->db:Lcom/example/calender1/DBAdapter;

    invoke-virtual {v5}, Lcom/example/calender1/DBAdapter;->close()V

    .line 266
    throw v4
.end method

.method private setCurrentDateTimeAndCategoryOnView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "date"
    .parameter "startTime"
    .parameter "endTime"
    .parameter "categoryId"
    .parameter "predicalTypeId"
    .parameter "title"
    .parameter "Description"
    .parameter "id"

    .prologue
    .line 279
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->tvDisplayDate:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->startTimeView:Landroid/widget/EditText;

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 281
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->endTimeView:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->titleView:Landroid/widget/EditText;

    invoke-virtual {v0, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/example/calender1/EditEventActivity;->descriptionView:Landroid/widget/EditText;

    invoke-virtual {v0, p7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 287
    iput-object p1, p0, Lcom/example/calender1/EditEventActivity;->oldDate:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lcom/example/calender1/EditEventActivity;->oldStartTime:Ljava/lang/String;

    .line 289
    iput-object p3, p0, Lcom/example/calender1/EditEventActivity;->oldEndTime:Ljava/lang/String;

    .line 290
    iput p4, p0, Lcom/example/calender1/EditEventActivity;->oldEventCategoryId:I

    .line 291
    iput p5, p0, Lcom/example/calender1/EditEventActivity;->oldEventPredicalTypeId:I

    .line 296
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    .line 70
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/example/calender1/EditEventActivity;->setContentView(I)V

    .line 74
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "selectedDate"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/example/calender1/EditEventActivity;->selectedDate:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/example/calender1/EditEventActivity;->intializeObjects()V

    .line 81
    invoke-direct {p0}, Lcom/example/calender1/EditEventActivity;->addListenerOnButton()V

    .line 82
    invoke-direct {p0}, Lcom/example/calender1/EditEventActivity;->addListenerOnStartTimeButton()V

    .line 83
    invoke-direct {p0}, Lcom/example/calender1/EditEventActivity;->addListenerOnEndTimeButton()V

    .line 84
    invoke-direct {p0}, Lcom/example/calender1/EditEventActivity;->addListernerOnDeleteButton()V

    .line 86
    invoke-direct {p0}, Lcom/example/calender1/EditEventActivity;->setCategories()V

    .line 88
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Date"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "StartTime"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "EndTime"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 91
    const/4 v4, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v6, "Title"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "Description"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v8, "id"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    move-object v0, p0

    .line 88
    invoke-direct/range {v0 .. v8}, Lcom/example/calender1/EditEventActivity;->setCurrentDateTimeAndCategoryOnView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v9

    .line 101
    .local v9, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/example/calender1/EditEventActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const/4 v2, 0x1

    .line 101
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x1

    .line 450
    sparse-switch p1, :sswitch_data_0

    .line 466
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 453
    :sswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/example/calender1/EditEventActivity;->datePickerListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 454
    iget v3, p0, Lcom/example/calender1/EditEventActivity;->year:I

    iget v4, p0, Lcom/example/calender1/EditEventActivity;->month:I

    iget v5, p0, Lcom/example/calender1/EditEventActivity;->day:I

    move-object v1, p0

    .line 453
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 458
    :sswitch_1
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/example/calender1/EditEventActivity;->endTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 459
    iget v3, p0, Lcom/example/calender1/EditEventActivity;->hours:I

    iget v4, p0, Lcom/example/calender1/EditEventActivity;->minute:I

    move-object v1, p0

    .line 458
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 462
    :sswitch_2
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v2, p0, Lcom/example/calender1/EditEventActivity;->startTimePickerListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    .line 463
    iget v3, p0, Lcom/example/calender1/EditEventActivity;->hours:I

    iget v4, p0, Lcom/example/calender1/EditEventActivity;->minute:I

    move-object v1, p0

    .line 462
    invoke-direct/range {v0 .. v5}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    goto :goto_0

    .line 450
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
    .line 531
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 533
    invoke-direct {p0}, Lcom/example/calender1/EditEventActivity;->setCategories()V

    .line 535
    return-void
.end method
