class Employee < ApplicationRecord
  enum gender: { unknown: 0, male: 1, female: 2 }
  enum enrollment_state: { enrolled: 0, leave: 1, retired: 2 }
  enum authority: { other: 0, president: 1, executive: 2, general: 3, guest: 4, parttime: 5 }
  enum department: { independent: 0, hr: 1, sysad: 2, sales: 3, develop: 4 }
end
