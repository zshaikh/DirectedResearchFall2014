.class Ldolphin/webkit/dx;
.super Ljava/lang/Object;
.source "InputTypeHandler.java"


# direct methods
.method static a(Ldolphin/webkit/WebViewClassic;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    .line 59
    packed-switch p1, :pswitch_data_0

    .line 81
    :goto_0
    return v0

    .line 61
    :pswitch_0
    invoke-static {p0, p2}, Ldolphin/webkit/dx;->a(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 64
    :pswitch_1
    invoke-static {p0, p2}, Ldolphin/webkit/dx;->c(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 67
    :pswitch_2
    invoke-static {p0, p2}, Ldolphin/webkit/dx;->d(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 70
    :pswitch_3
    invoke-static {p0, p2}, Ldolphin/webkit/dx;->e(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 73
    :pswitch_4
    invoke-static {p0, p2}, Ldolphin/webkit/dx;->f(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 76
    :pswitch_5
    invoke-static {p0, p2}, Ldolphin/webkit/dx;->b(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 92
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 103
    :goto_0
    new-instance v0, Ldolphin/webkit/et;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/dy;

    invoke-direct {v2, p0, v5, p1}, Ldolphin/webkit/dy;-><init>(Ldolphin/webkit/WebViewClassic;Landroid/text/format/Time;Ljava/lang/String;)V

    iget v3, v5, Landroid/text/format/Time;->year:I

    iget v4, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/et;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Ldolphin/webkit/et;->show()V

    .line 116
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm\'Z\'"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method

.method private static b(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 120
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 131
    :goto_0
    new-instance v0, Ldolphin/webkit/et;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ea;

    invoke-direct {v2, p0, v5, p1}, Ldolphin/webkit/ea;-><init>(Ldolphin/webkit/WebViewClassic;Landroid/text/format/Time;Ljava/lang/String;)V

    iget v3, v5, Landroid/text/format/Time;->year:I

    iget v4, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/et;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Ldolphin/webkit/et;->show()V

    .line 144
    const/4 v0, 0x1

    return v0

    .line 125
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method

.method private static c(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 148
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 159
    :goto_0
    new-instance v0, Ldolphin/webkit/et;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ec;

    invoke-direct {v2, v5, p0, p1}, Ldolphin/webkit/ec;-><init>(Landroid/text/format/Time;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V

    iget v3, v5, Landroid/text/format/Time;->year:I

    iget v4, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/et;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Ldolphin/webkit/et;->show()V

    .line 167
    const/4 v0, 0x1

    return v0

    .line 153
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method

.method private static d(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 171
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 182
    :goto_0
    new-instance v0, Ldolphin/webkit/et;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ed;

    invoke-direct {v2, v5, p0, p1}, Ldolphin/webkit/ed;-><init>(Landroid/text/format/Time;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V

    iget v3, v5, Landroid/text/format/Time;->year:I

    iget v4, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/et;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Ldolphin/webkit/et;->show()V

    .line 190
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method

.method private static e(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 194
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 206
    :goto_0
    new-instance v0, Ldolphin/webkit/et;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ee;

    invoke-direct {v2, v5, p0, p1}, Ldolphin/webkit/ee;-><init>(Landroid/text/format/Time;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V

    iget v3, v5, Landroid/text/format/Time;->year:I

    iget v4, v5, Landroid/text/format/Time;->month:I

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/et;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    invoke-virtual {v0}, Ldolphin/webkit/et;->show()V

    .line 215
    const/4 v0, 0x1

    return v0

    .line 199
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-\'W\'ww"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 203
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method

.method private static f(Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 219
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 230
    :goto_0
    new-instance v0, Ldolphin/webkit/eu;

    invoke-virtual {p0}, Ldolphin/webkit/WebViewClassic;->d()Ldolphin/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Ldolphin/webkit/WebView;->getActivityContext()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ldolphin/webkit/ef;

    invoke-direct {v2, v4, p0, p1}, Ldolphin/webkit/ef;-><init>(Landroid/text/format/Time;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V

    iget v3, v4, Landroid/text/format/Time;->hour:I

    iget v4, v4, Landroid/text/format/Time;->minute:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Ldolphin/webkit/eu;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Ldolphin/webkit/eu;->show()V

    .line 239
    const/4 v0, 0x1

    return v0

    .line 224
    :cond_0
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    goto :goto_0
.end method
