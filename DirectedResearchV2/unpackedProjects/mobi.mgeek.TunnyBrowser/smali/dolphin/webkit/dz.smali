.class Ldolphin/webkit/dz;
.super Ljava/lang/Object;
.source "InputTypeHandler.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ldolphin/webkit/dy;


# direct methods
.method constructor <init>(Ldolphin/webkit/dy;III)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Ldolphin/webkit/dz;->d:Ldolphin/webkit/dy;

    iput p2, p0, Ldolphin/webkit/dz;->a:I

    iput p3, p0, Ldolphin/webkit/dz;->b:I

    iput p4, p0, Ldolphin/webkit/dz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 7

    .prologue
    .line 109
    iget-object v0, p0, Ldolphin/webkit/dz;->d:Ldolphin/webkit/dy;

    iget-object v0, v0, Ldolphin/webkit/dy;->b:Landroid/text/format/Time;

    const/4 v1, 0x0

    iget v4, p0, Ldolphin/webkit/dz;->a:I

    iget v5, p0, Ldolphin/webkit/dz;->b:I

    iget v6, p0, Ldolphin/webkit/dz;->c:I

    move v2, p3

    move v3, p2

    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 110
    iget-object v0, p0, Ldolphin/webkit/dz;->d:Ldolphin/webkit/dy;

    iget-object v0, v0, Ldolphin/webkit/dy;->b:Landroid/text/format/Time;

    const-string v1, "%Y-%m-%dT%H:%MZ"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    iget-object v1, p0, Ldolphin/webkit/dz;->d:Ldolphin/webkit/dy;

    iget-object v1, v1, Ldolphin/webkit/dy;->a:Ldolphin/webkit/WebViewClassic;

    iget-object v2, p0, Ldolphin/webkit/dz;->d:Ldolphin/webkit/dy;

    iget-object v2, v2, Ldolphin/webkit/dy;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ldolphin/webkit/WebViewClassic;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method
