.class public Lcom/acmeaom/android/myradar/app/ui/n;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public static a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;
    .locals 9

    .prologue
    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 72
    const-string v0, "app.rating.inplay"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x1030059

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 76
    new-instance v0, Lcom/acmeaom/android/myradar/app/ui/o;

    invoke-direct {v0, v1, p1}, Lcom/acmeaom/android/myradar/app/ui/o;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 88
    invoke-virtual {v2}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f03000d

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 89
    if-eqz v3, :cond_0

    .line 90
    const v0, 0x7f080041

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    .line 91
    new-instance v4, Lcom/acmeaom/android/myradar/app/ui/p;

    invoke-direct {v4}, Lcom/acmeaom/android/myradar/app/ui/p;-><init>()V

    invoke-virtual {v0, v4}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 97
    const v0, 0x7f080043

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 98
    new-instance v4, Lcom/acmeaom/android/myradar/app/ui/q;

    invoke-direct {v4, p0, v1, v2}, Lcom/acmeaom/android/myradar/app/ui/q;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const v0, 0x7f080044

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 120
    const-wide/16 v4, 0x14

    const-string v6, "app.launch.count"

    const-wide/16 v7, 0x0

    invoke-interface {p1, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_1

    .line 121
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 131
    :goto_0
    const v0, 0x7f080045

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 132
    new-instance v4, Lcom/acmeaom/android/myradar/app/ui/s;

    invoke-direct {v4, v1, v2}, Lcom/acmeaom/android/myradar/app/ui/s;-><init>(Landroid/content/SharedPreferences$Editor;Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 141
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 143
    :cond_0
    return-object v2

    .line 123
    :cond_1
    new-instance v4, Lcom/acmeaom/android/myradar/app/ui/r;

    invoke-direct {v4, v2}, Lcom/acmeaom/android/myradar/app/ui/r;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    .line 36
    const-string v0, "app.rating"

    invoke-virtual {p0, v0, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 37
    const-string v0, "app.rating.enabled"

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 46
    const-string v0, "app.launch.time"

    invoke-interface {v1, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v7, v3

    if-nez v3, :cond_2

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 49
    const-string v3, "app.launch.time"

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    :cond_2
    const-string v3, "app.rating.inplay"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 55
    invoke-static {p0, v1}, Lcom/acmeaom/android/myradar/app/ui/n;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0xf731400

    add-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_0

    .line 60
    const-string v0, "app.launch.count"

    invoke-interface {v1, v0, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    .line 61
    const-wide/16 v5, 0xa

    rem-long v5, v3, v5

    cmp-long v0, v7, v5

    if-nez v0, :cond_4

    .line 62
    invoke-static {p0, v1}, Lcom/acmeaom/android/myradar/app/ui/n;->a(Landroid/content/Context;Landroid/content/SharedPreferences;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 64
    :cond_4
    const-string v0, "app.launch.count"

    invoke-interface {v2, v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method
