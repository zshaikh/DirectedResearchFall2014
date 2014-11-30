.class final Ldolphin/webkit/ef;
.super Ljava/lang/Object;
.source "InputTypeHandler.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:Landroid/text/format/Time;

.field final synthetic b:Ldolphin/webkit/WebViewClassic;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/text/format/Time;Ldolphin/webkit/WebViewClassic;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Ldolphin/webkit/ef;->a:Landroid/text/format/Time;

    iput-object p2, p0, Ldolphin/webkit/ef;->b:Ldolphin/webkit/WebViewClassic;

    iput-object p3, p0, Ldolphin/webkit/ef;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Ldolphin/webkit/ef;->a:Landroid/text/format/Time;

    iput p2, v0, Landroid/text/format/Time;->hour:I

    .line 234
    iget-object v0, p0, Ldolphin/webkit/ef;->a:Landroid/text/format/Time;

    iput p3, v0, Landroid/text/format/Time;->minute:I

    .line 235
    iget-object v0, p0, Ldolphin/webkit/ef;->a:Landroid/text/format/Time;

    const-string v1, "%H:%M"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    iget-object v1, p0, Ldolphin/webkit/ef;->b:Ldolphin/webkit/WebViewClassic;

    iget-object v2, p0, Ldolphin/webkit/ef;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method
