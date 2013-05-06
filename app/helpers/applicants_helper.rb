module ApplicantsHelper
  def aweekago
    a = Applicant.find(:all, :conditions => ["created_at > ?", 1.week.ago]).count.to_i
    b = Applicant.find(:all, :conditions => ["created_at > ?", 6.days.ago]).count.to_i
    c = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 1.week.ago, 2]).count.to_i
    d = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 6.days.ago, 2]).count.to_i
    abtotal = a - b
    cdtotal = c - d
    [abtotal, cdtotal]
  end

  def sixdaysago
    a = Applicant.find(:all, :conditions => ["created_at > ?", 6.days.ago]).count.to_i
    b = Applicant.find(:all, :conditions => ["created_at > ?", 5.days.ago]).count.to_i
    c = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 6.days.ago, 2]).count.to_i
    d = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 5.days.ago, 2]).count.to_i
    abtotal = a - b
    cdtotal = c - d
    [abtotal, cdtotal]
  end

  def fivedaysago
    a = Applicant.find(:all, :conditions => ["created_at > ?", 5.days.ago]).count.to_i
    b = Applicant.find(:all, :conditions => ["created_at > ?", 4.days.ago]).count.to_i
    c = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 5.days.ago, 2]).count.to_i
    d = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 4.days.ago, 2]).count.to_i
    abtotal = a - b
    cdtotal = c - d
    [abtotal, cdtotal]
  end

  def fourdaysago
    a = Applicant.find(:all, :conditions => ["created_at > ?", 4.days.ago]).count.to_i
    b = Applicant.find(:all, :conditions => ["created_at > ?", 3.days.ago]).count.to_i
    c = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 4.days.ago, 2]).count.to_i
    d = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 3.days.ago, 2]).count.to_i
    abtotal = a - b
    cdtotal = c - d
    [abtotal, cdtotal]
  end

  def threedaysago
    a = Applicant.find(:all, :conditions => ["created_at > ?", 3.days.ago]).count.to_i
    b = Applicant.find(:all, :conditions => ["created_at > ?", 48.hours.ago]).count.to_i
    c = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 3.days.ago, 2]).count.to_i
    d = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 48.hours.ago, 2]).count.to_i
    abtotal = a - b
    cdtotal = c - d
    [abtotal, cdtotal]
  end

  def twodaysago
    a = Applicant.find(:all, :conditions => ["created_at > ?", 48.hours.ago]).count.to_i
    b = Applicant.find(:all, :conditions => ["created_at > ?", 24.hours.ago]).count.to_i
    c = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 48.hours.ago, 2]).count.to_i
    d = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 24.hours.ago, 2]).count.to_i
    abtotal = a - b
    cdtotal = c - d
    [abtotal, cdtotal]
  end

  def adayago
    abtotal = Applicant.find(:all, :conditions => ["created_at > ?", 24.hours.ago]).count.to_i
    cdtotal = Applicant.find(:all, :conditions => ["created_at > ? AND status = ?", 24.hours.ago, 2]).count.to_i
    [abtotal, cdtotal]
  end
end
