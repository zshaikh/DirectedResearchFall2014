.class final Ldolphin/webkit/ee;
.super Ljava/lang/Object;
.source "InputTypeHandler.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# instance fields
.field final synthetic a:Landroid/text/format/Time;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/text/format/Time;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Ldolphin/webkit/ee;->a:Landroid/text/format/Time;

    iput-object p2, p0, Ldolphin/webkit/ee;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p3, p0, Ldolphin/webkit/ee;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 209
    iget-object v0, p0, Ldolphin/webkit/ee;->a:Landroid/text/format/Time;

    invoke-virtual {v0, p4, p3, p2}, Landroid/text/format/Time;->set(III)V

    .line 210
    iget-object v0, p0, Ldolphin/webkit/ee;->a:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-\'W\'ww"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Ldolphin/webkit/ee;->a:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 212
    iget-object v1, p0, Ldolphin/webkit/ee;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v2, p0, Ldolphin/webkit/ee;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    return-void
.end method
